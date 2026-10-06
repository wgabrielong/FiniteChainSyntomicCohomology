# The rings of the tables, as plain data (no dependencies): R = O_K/ϖ^n = W(F_q)[z]/(E(z), z^n),
# where W(F_q) = Z_p[x]/(h̃) and E is an Eisenstein polynomial of degree e
# [AKN, §7.1, Input, p. 53]. The encoding is that of Syntomic.jl's
# finite_chain_ring(p, htilde, E, n): `htilde` lists the coefficients of h̃ from low to high
# degree, and E[k+1] the coordinates of the coefficient of z^k in the basis 1, x, …, x^(f-1).
#
# The quadratic and cubic extensions of Q_p, p ≤ 7, are those of the LMFDB, each presented
# by its LMFDB defining polynomial: h̃ for the unramified field (with E = z + p), E itself
# for the ramified ones.

struct Field
    key::String          # in the names of the files: "sqrt-1", "cbrt2"
    name::String         # "Q₂(√−1)"
    ascii::String        # "Q_2(sqrt(-1))"
    alias::String        # the same field with another square root ("" if none is used)
    lmfdb::String        # the label in the LMFDB
    akn_label::String    # the label printed by [AKN] ("" if the field is not in [AKN])
    poly::String         # the defining polynomial in the LMFDB
    p::Int
    f::Int
    e::Int
    c::Int               # the exponent of the discriminant
    htilde::Vector{Int}
    E::Vector{Vector{Int}}
end

struct Ring
    id::String           # the name of its files
    family::Symbol       # :akn (the rings of [AKN, Appendix A]), :quadratic or :cubic
    field::Field
    n::Int
end

const SUPERSCRIPTS = Dict(zip("0123456789", "⁰¹²³⁴⁵⁶⁷⁸⁹"))
const SUBSCRIPTS = Dict(zip("0123456789", "₀₁₂₃₄₅₆₇₈₉"))
sup(k) = join(SUPERSCRIPTS[c] for c in string(k))
sub(k) = join(SUBSCRIPTS[c] for c in string(k))

function qp(p)
    return Field(
        "Q$p",
        "Q$(sub(p))",
        "Q_$p",
        "",
        "$p.1.1.0a1.1",
        "$p.1.0.1",
        "x - $p",
        p,
        1,
        1,
        0,
        [0, 1],
        [[p], [1]],
    )
end

# The quadratic extensions of Q_p for p ≤ 7, as in the LMFDB (p-adic fields of degree 2), with the
# LMFDB's defining polynomial: h̃ for the unramified field (then E = z + p) and E itself for the
# ramified ones, where it is Eisenstein. The names come from the discriminants of the polynomials,
# with the square classes of Q_p written as {1, u, p, up}: u = -1 for p = 3, 7 and u = 2 for
# p = 5; for p = 2 the classes are those of ±1, ±2, ±3, ±6 (-5 = 3 and -10 = 6 up to squares,
# since -15 ≡ 1 mod 8).
function unramified(p, key, name, ascii, lmfdb, poly, htilde)
    f = length(htilde) - 1
    E = [[p; zeros(Int, f - 1)], [1; zeros(Int, f - 1)]]
    return Field(key, name, ascii, "", lmfdb, "", poly, p, f, 1, 0, htilde, E)
end

function ramified(p, key, name, ascii, alias, lmfdb, poly, c, E)
    return Field(
        key, name, ascii, alias, lmfdb, "", poly, p, 1, length(E) - 1, c, [0, 1], E
    )
end

const QUADRATIC_FIELDS = [
    # Q_2: x a primitive cube root of unity; (x + 1)^2 = -1; (x + 1)^2 = -5; x^2 = -2;
    # x^2 = -10; (x + 2)^2 = 2; (x + 2)^2 = -6
    unramified(
        2, "sqrt-3", "Q₂(√−3)", "Q_2(sqrt(-3))", "2.2.1.0a1.1", "x^2 + x + 1", [1, 1, 1]
    ),
    ramified(
        2,
        "sqrt-1",
        "Q₂(√−1)",
        "Q_2(sqrt(-1))",
        "",
        "2.1.2.2a1.1",
        "x^2 + 2x + 2",
        2,
        [[2], [2], [1]],
    ),
    ramified(
        2,
        "sqrt3",
        "Q₂(√3)",
        "Q_2(sqrt(3))",
        "Q₂(√−5)",
        "2.1.2.2a1.2",
        "x^2 + 2x + 6",
        2,
        [[6], [2], [1]],
    ),
    ramified(
        2,
        "sqrt-2",
        "Q₂(√−2)",
        "Q_2(sqrt(-2))",
        "",
        "2.1.2.3a1.1",
        "x^2 + 2",
        3,
        [[2], [0], [1]],
    ),
    ramified(
        2,
        "sqrt6",
        "Q₂(√6)",
        "Q_2(sqrt(6))",
        "Q₂(√−10)",
        "2.1.2.3a1.2",
        "x^2 + 10",
        3,
        [[10], [0], [1]],
    ),
    ramified(
        2,
        "sqrt2",
        "Q₂(√2)",
        "Q_2(sqrt(2))",
        "",
        "2.1.2.3a1.3",
        "x^2 + 4x + 2",
        3,
        [[2], [4], [1]],
    ),
    ramified(
        2,
        "sqrt-6",
        "Q₂(√−6)",
        "Q_2(sqrt(-6))",
        "",
        "2.1.2.3a1.4",
        "x^2 + 4x + 10",
        3,
        [[10], [4], [1]],
    ),
    # Q_3: (x + 1)^2 = -1; x^2 = -3; x^2 = -6 (-6 = 3 up to squares, since -2 ≡ 1 mod 3)
    unramified(
        3, "sqrt-1", "Q₃(√−1)", "Q_3(sqrt(-1))", "3.2.1.0a1.1", "x^2 + 2x + 2", [2, 2, 1]
    ),
    ramified(
        3,
        "sqrt-3",
        "Q₃(√−3)",
        "Q_3(sqrt(-3))",
        "",
        "3.1.2.1a1.1",
        "x^2 + 3",
        1,
        [[3], [0], [1]],
    ),
    ramified(
        3,
        "sqrt3",
        "Q₃(√3)",
        "Q_3(sqrt(3))",
        "Q₃(√−6)",
        "3.1.2.1a1.2",
        "x^2 + 6",
        1,
        [[6], [0], [1]],
    ),
    # Q_5: (x + 2)^2 = 2; x^2 = -5; x^2 = -10 (-1 is a square mod 5)
    unramified(
        5, "sqrt2", "Q₅(√2)", "Q_5(sqrt(2))", "5.2.1.0a1.1", "x^2 + 4x + 2", [2, 4, 1]
    ),
    ramified(
        5,
        "sqrt5",
        "Q₅(√5)",
        "Q_5(sqrt(5))",
        "Q₅(√−5)",
        "5.1.2.1a1.1",
        "x^2 + 5",
        1,
        [[5], [0], [1]],
    ),
    ramified(
        5,
        "sqrt10",
        "Q₅(√10)",
        "Q_5(sqrt(10))",
        "Q₅(√−10)",
        "5.1.2.1a1.2",
        "x^2 + 10",
        1,
        [[10], [0], [1]],
    ),
    # Q_7: (x + 3)^2 = 6 (6 = -1 up to squares); x^2 = -7; x^2 = -21 (-21 = 7 up to squares,
    # since -3 ≡ 4 mod 7)
    unramified(
        7, "sqrt-1", "Q₇(√−1)", "Q_7(sqrt(-1))", "7.2.1.0a1.1", "x^2 + 6x + 3", [3, 6, 1]
    ),
    ramified(
        7,
        "sqrt-7",
        "Q₇(√−7)",
        "Q_7(sqrt(-7))",
        "",
        "7.1.2.1a1.1",
        "x^2 + 7",
        1,
        [[7], [0], [1]],
    ),
    ramified(
        7,
        "sqrt7",
        "Q₇(√7)",
        "Q_7(sqrt(7))",
        "Q₇(√−21)",
        "7.1.2.1a1.2",
        "x^2 + 21",
        1,
        [[21], [0], [1]],
    ),
]

# The cubic extensions of Q_p for p ≤ 7, as in the LMFDB (p-adic fields of degree 3),
# presented in the same way. The unramified one is Q_p(ζ_m) for the least m such that p has
# order 3 modulo m. A ramified field whose polynomial is x^3 + a is Q_p(∛a), since -1 is a
# cube. The other names say that the field contains a root of x^3 - a, or of x^3 - 3x + 1
# for Q₃(ζ₉)⁺ = Q₃(ζ₉ + ζ₉⁻¹); `check_name` in scripts/build.jl finds that root. The four
# remaining fields of Q₃ have no such name and are written Q₃[x]/(polynomial); their keys
# are their LMFDB labels.
function polyfield(p, lmfdb, poly, c, E)
    name = "Q$(sub(p))[x]/($(replace(poly, r"\^(\d+)" => m -> sup(m[2:end]))))"
    return ramified(p, lmfdb, name, "Q_$p[x]/($poly)", "", lmfdb, poly, c, E)
end

const CUBIC_FIELDS = [
    # Q_2: x a primitive 7th root of unity; x^3 = -2
    unramified(
        2, "zeta7", "Q₂(ζ₇)", "Q_2(zeta_7)", "2.3.1.0a1.1", "x^3 + x + 1", [1, 1, 0, 1]
    ),
    ramified(
        2,
        "cbrt2",
        "Q₂(∛2)",
        "Q_2(cbrt(2))",
        "",
        "2.1.3.2a1.1",
        "x^3 + 2",
        2,
        [[2], [0], [0], [1]],
    ),
    # Q_3: x a primitive 13th root of unity, and the nine ramified fields
    unramified(
        3, "zeta13", "Q₃(ζ₁₃)", "Q_3(zeta_13)", "3.3.1.0a1.1", "x^3 + 2x + 1", [1, 2, 0, 1]
    ),
    ramified(
        3,
        "cbrt2",
        "Q₃(∛2)",
        "Q_3(cbrt(2))",
        "",
        "3.1.3.3a1.1",
        "x^3 + 3x + 3",
        3,
        [[3], [3], [0], [1]],
    ),
    polyfield(3, "3.1.3.3a1.2", "x^3 + 6x + 3", 3, [[3], [6], [0], [1]]),
    polyfield(3, "3.1.3.4a1.1", "x^3 + 3x^2 + 3", 4, [[3], [0], [3], [1]]),
    ramified(
        3,
        "zeta9plus",
        "Q₃(ζ₉)⁺",
        "Q_3(zeta_9)^+",
        "",
        "3.1.3.4a2.1",
        "x^3 + 6x^2 + 3",
        4,
        [[3], [0], [6], [1]],
    ),
    polyfield(3, "3.1.3.4a2.2", "x^3 + 6x^2 + 12", 4, [[12], [0], [6], [1]]),
    polyfield(3, "3.1.3.4a2.3", "x^3 + 6x^2 + 21", 4, [[21], [0], [6], [1]]),
    ramified(
        3,
        "cbrt3",
        "Q₃(∛3)",
        "Q_3(cbrt(3))",
        "",
        "3.1.3.5a1.1",
        "x^3 + 3",
        5,
        [[3], [0], [0], [1]],
    ),
    ramified(
        3,
        "cbrt12",
        "Q₃(∛12)",
        "Q_3(cbrt(12))",
        "",
        "3.1.3.5a1.2",
        "x^3 + 9x + 3",
        5,
        [[3], [9], [0], [1]],
    ),
    ramified(
        3,
        "cbrt6",
        "Q₃(∛6)",
        "Q_3(cbrt(6))",
        "",
        "3.1.3.5a1.3",
        "x^3 + 18x + 3",
        5,
        [[3], [18], [0], [1]],
    ),
    # Q_5: x a primitive 31st root of unity; x^3 = -5
    unramified(
        5, "zeta31", "Q₅(ζ₃₁)", "Q_5(zeta_31)", "5.3.1.0a1.1", "x^3 + 3x + 3", [3, 3, 0, 1]
    ),
    ramified(
        5,
        "cbrt5",
        "Q₅(∛5)",
        "Q_5(cbrt(5))",
        "",
        "5.1.3.2a1.1",
        "x^3 + 5",
        2,
        [[5], [0], [0], [1]],
    ),
    # Q_7: x a primitive 9th root of unity; x^3 = -7, -14, -21
    unramified(
        7, "zeta9", "Q₇(ζ₉)", "Q_7(zeta_9)", "7.3.1.0a1.1", "x^3 + 6x^2 + 4", [4, 0, 6, 1]
    ),
    ramified(
        7,
        "cbrt7",
        "Q₇(∛7)",
        "Q_7(cbrt(7))",
        "",
        "7.1.3.2a1.1",
        "x^3 + 7",
        2,
        [[7], [0], [0], [1]],
    ),
    ramified(
        7,
        "cbrt14",
        "Q₇(∛14)",
        "Q_7(cbrt(14))",
        "",
        "7.1.3.2a1.2",
        "x^3 + 14",
        2,
        [[14], [0], [0], [1]],
    ),
    ramified(
        7,
        "cbrt21",
        "Q₇(∛21)",
        "Q_7(cbrt(21))",
        "",
        "7.1.3.2a1.3",
        "x^3 + 21",
        2,
        [[21], [0], [0], [1]],
    ),
]

const AKN_RINGS = [
    Ring("zpn_$(p)_$(n)", :akn, qp(p), n) for
    (p, ns) in ((2, 2:5), (3, 2:5), (5, 2:6), (7, 2:7)) for n in ns
]

const QUADRATIC_RINGS = [
    Ring("Q$(K.p)_$(K.key)_n$n", :quadratic, K, n) for K in QUADRATIC_FIELDS for n in 2:5
]

const CUBIC_RINGS = [
    Ring("Q$(K.p)_$(K.key)_n$n", :cubic, K, n) for K in CUBIC_FIELDS for n in 2:5
]

const RINGS = vcat(AKN_RINGS, QUADRATIC_RINGS, CUBIC_RINGS)

function ring_by_id(id::AbstractString)
    k = findfirst(R -> R.id == id, RINGS)
    k === nothing && error("unknown ring $id; the rings are listed in scripts/rings.jl")
    return RINGS[k]
end

# Names of a ring: "Z/2³" and "Z/2^3" for Z/p^n, "O_K/ϖ³" and "O_K/pi^3" otherwise.
ring_name(R::Ring) = R.family == :akn ? "Z/$(R.field.p)$(sup(R.n))" : "O_K/ϖ$(sup(R.n))"
ring_ascii(R::Ring) = R.family == :akn ? "Z/$(R.field.p)^$(R.n)" : "O_K/pi^$(R.n)"
# with the field: "Z/2³", "O_K/ϖ³, K = Q₂(√−1)"
function ring_title(R::Ring)
    return R.family == :akn ? ring_name(R) : "$(ring_name(R)), K = $(R.field.name)"
end
function ring_title_ascii(R::Ring)
    return R.family == :akn ? ring_ascii(R) : "$(ring_ascii(R)), K = $(R.field.ascii)"
end
