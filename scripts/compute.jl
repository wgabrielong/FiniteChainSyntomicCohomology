# The syntomic cohomology H^1 and H^2 of Z_p(i)(Z/p^n) for the weights 1 ≤ i ≤ imax, computed
# with Syntomic.jl. The p-adic K-groups are K_{2i-1}(Z/p^n; Z_p) ≅ H^1(Z_p(i)) and
# K_{2i-2}(Z/p^n; Z_p) ≅ H^2(Z_p(i)) for i ≥ 2 [AKN, Cor. 2.16, p. 9], so imax = 51 gives
# every K_r with r ≤ 100.
#
#   julia --project=scripts/compute -t 8 scripts/compute.jl p n [imax]
#
# Writes data/cohomology/zpn_<p>_<n>.json (the result format of Syntomic.jl's save_results: H^1,
# H^2 and the working precision of every weight) and data/runs/zpn_<p>_<n>.json (the software
# versions, the machine, the time and the peak memory of the run).
using Syntomic
using Nemo: Nemo
using JSON3
using Dates
using Pkg: Pkg

const ROOT = normpath(joinpath(@__DIR__, ".."))

# The commit of Syntomic.jl: of the checkout if it is developed from a path, otherwise the
# revision that the environment pins.
function syntomic_commit()
    dir = pkgdir(Syntomic)
    isdir(joinpath(dir, ".git")) && return readchomp(`git -C $dir rev-parse HEAD`)
    info = get(Pkg.dependencies(), Base.PkgId(Syntomic).uuid, nothing)
    return info === nothing ? nothing : info.git_revision
end

function main(args)
    p, n = parse(Int, args[1]), parse(Int, args[2])
    imax = length(args) >= 3 ? parse(Int, args[3]) : 51
    name = "zpn_$(p)_$(n)"
    X = zpn(p, n)
    syntomic_sweep(X, [n], 1:3)                                     # compilation, not timed
    GC.gc()
    started = now(UTC)
    t = @elapsed results = syntomic_sweep(X, [n], 1:imax; check_memory=false)
    save_results(joinpath(ROOT, "data", "cohomology", "$name.json"), results)
    run = (;
        ring="Z/$p^$n",
        p,
        n,
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
        println(io)
    end
    println("$name: $(round(t; digits=1)) s, peak $(run.peak_memory_gib) GiB")
    return nothing
end

main(ARGS)
