# The syntomic cohomology H^1 and H^2 of Z_p(i)(R) for the weights 1 ≤ i ≤ imax, computed with
# Syntomic.jl, for one ring R = O_K/ϖ^n of scripts/rings.jl. The p-adic K-groups are
# K_{2i-1}(R; Z_p) ≅ H^1(Z_p(i)) and K_{2i-2}(R; Z_p) ≅ H^2(Z_p(i)) for i ≥ 2
# [AKN, Cor. 2.16, p. 9], so imax = 51 gives every K_r with r ≤ 100.
#
#   julia --project=scripts/compute -t 8 scripts/compute.jl <ring id> [imax]
#
# for instance `zpn_7_7` or `Q2_sqrt-1_n5`. Writes data/cohomology/<id>.json (the result format
# of Syntomic.jl's save_results: H^1, H^2 and the working precision of every weight) and
# data/runs/<id>.json (the software versions, the machine, the time and the peak memory of the
# run).
using Syntomic
using Nemo: Nemo
using JSON3
using Dates
using Pkg: Pkg

const ROOT = normpath(joinpath(@__DIR__, ".."))
include(joinpath(@__DIR__, "rings.jl"))

# The commit of Syntomic.jl: of the checkout if it is developed from a path, otherwise the
# revision that the environment pins.
function syntomic_commit()
    dir = pkgdir(Syntomic)
    isdir(joinpath(dir, ".git")) && return readchomp(`git -C $dir rev-parse HEAD`)
    info = get(Pkg.dependencies(), Base.PkgId(Syntomic).uuid, nothing)
    return info === nothing ? nothing : info.git_revision
end

function main(args)
    R = ring_by_id(args[1])
    imax = length(args) >= 2 ? parse(Int, args[2]) : 51
    name = R.id
    K = R.field
    n = R.n
    X = finite_chain_ring(K.p, K.htilde, K.E, n; label=ring_title_ascii(R))
    syntomic_sweep(X, [n], 1:3)                                     # compilation, not timed
    GC.gc()
    started = now(UTC)
    t = @elapsed results = syntomic_sweep(X, [n], 1:imax; check_memory=false)
    save_results(joinpath(ROOT, "data", "cohomology", "$name.json"), results)
    run = (;
        ring=ring_title_ascii(R),
        id=R.id,
        weights=[1, imax],
        started=string(started, "Z"),
        wall_seconds=round(t; digits=1),
        peak_memory_gib=round(Sys.maxrss() / 2^30; digits=1),
        threads=Threads.nthreads(),
        syntomic_version=string(pkgversion(Syntomic)),
        syntomic_commit=syntomic_commit(),
        nemo_version=string(pkgversion(Nemo)),
        julia_version=string(VERSION),
        cpu=Sys.cpu_info()[1].model,
        memory_gib=round(Int, Sys.total_memory() / 2^30),
        os=string(Sys.KERNEL, " ", Sys.ARCH),
    )
    open(joinpath(ROOT, "data", "runs", "$name.json"), "w") do io
        JSON3.pretty(io, run)
        return println(io)
    end
    println("$name: $(round(t; digits=1)) s, peak $(run.peak_memory_gib) GiB")
    return nothing
end

main(ARGS)
