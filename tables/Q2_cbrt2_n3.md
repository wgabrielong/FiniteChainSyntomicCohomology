# p-adic K-theory of O_K/ϖ³, K = Q₂(∛2)

[All rings](../README.md) · the same data: [`k_theory.json`](../data/k_theory.json), [`k_theory.csv`](../data/k_theory.csv)

The p-adic K-groups K_r(R; Z₂) for 1 ≤ r ≤ 100. As in [AKN, Appendix A], each entry lists the exponents a₁ ≤ a₂ ≤ … of the decomposition K_r(R; Z₂) ≅ Z/2^a₁ ⊕ Z/2^a₂ ⊕ …, and `0` is the zero group (a blank cell in [AKN]). K_0(R; Z₂) = Z₂.

K = Q₂(∛2) is ramified over Q₂, with e = 3 and discriminant exponent 2 (LMFDB [2.1.3.2a1.1](https://www.lmfdb.org/padicField/2.1.3.2a1.1)). R = O_K/ϖ³ = Z₂[z]/(E(z), z³) with E(z) = z³ + 2, the defining polynomial of the LMFDB, and ϖ a root of E. |R| = 2³.

Since n ≤ e, R = F₂[z]/z³. Hesselholt and Madsen computed the K-groups of these rings (cited in [AKN, §1.1, p. 2]): K_{2i−1}(F_q[z]/zⁿ; Z_p) ≅ W_{ni}(F_q)/V_n W_i(F_q) and K_{2i−2}(F_q[z]/zⁿ; Z_p) = 0 for i ≥ 2. Every group below agrees with their formula, so none is new.

The rings [O_K/ϖ³, K = Q₂(√−1)](Q2_sqrt-1_n3.md), [O_K/ϖ³, K = Q₂(√3)](Q2_sqrt3_n3.md), [O_K/ϖ³, K = Q₂(√−2)](Q2_sqrt-2_n3.md), [O_K/ϖ³, K = Q₂(√6)](Q2_sqrt6_n3.md), [O_K/ϖ³, K = Q₂(√2)](Q2_sqrt2_n3.md), [O_K/ϖ³, K = Q₂(√−6)](Q2_sqrt-6_n3.md) are not isomorphic to R, but have the same K-groups K_1–K_100 (see the [coincidences](../docs/coincidences.md#across-the-families)).

The last column gives the status: *Hesselholt–Madsen*.

| r | K_r(R; Z₂) | order | status |
|--:|:--|:--|:--|
| 1 | 2 | 2² | Hesselholt–Madsen |
| 2 | 0 | 1 | Hesselholt–Madsen |
| 3 | 1,3 | 2⁴ | Hesselholt–Madsen |
| 4 | 0 | 1 | Hesselholt–Madsen |
| 5 | 1,1,4 | 2⁶ | Hesselholt–Madsen |
| 6 | 0 | 1 | Hesselholt–Madsen |
| 7 | 1,1,2,4 | 2⁸ | Hesselholt–Madsen |
| 8 | 0 | 1 | Hesselholt–Madsen |
| 9 | 1,1,2,2,4 | 2¹⁰ | Hesselholt–Madsen |
| 10 | 0 | 1 | Hesselholt–Madsen |
| 11 | 1,1,1,2,2,5 | 2¹² | Hesselholt–Madsen |
| 12 | 0 | 1 | Hesselholt–Madsen |
| 13 | 1,1,1,1,2,3,5 | 2¹⁴ | Hesselholt–Madsen |
| 14 | 0 | 1 | Hesselholt–Madsen |
| 15 | 1,1,1,1,2,2,3,5 | 2¹⁶ | Hesselholt–Madsen |
| 16 | 0 | 1 | Hesselholt–Madsen |
| 17 | 1,1,1,1,2,2,2,3,5 | 2¹⁸ | Hesselholt–Madsen |
| 18 | 0 | 1 | Hesselholt–Madsen |
| 19 | 1,1,1,1,1,2,2,3,3,5 | 2²⁰ | Hesselholt–Madsen |
| 20 | 0 | 1 | Hesselholt–Madsen |
| 21 | 1,1,1,1,1,1,2,2,3,3,6 | 2²² | Hesselholt–Madsen |
| 22 | 0 | 1 | Hesselholt–Madsen |
| 23 | 1,1,1,1,1,1,2,2,2,3,3,6 | 2²⁴ | Hesselholt–Madsen |
| 24 | 0 | 1 | Hesselholt–Madsen |
| 25 | 1,1,1,1,1,1,2,2,2,2,3,3,6 | 2²⁶ | Hesselholt–Madsen |
| 26 | 0 | 1 | Hesselholt–Madsen |
| 27 | 1,1,1,1,1,1,1,2,2,2,2,3,4,6 | 2²⁸ | Hesselholt–Madsen |
| 28 | 0 | 1 | Hesselholt–Madsen |
| 29 | 1,1,1,1,1,1,1,1,2,2,2,3,3,4,6 | 2³⁰ | Hesselholt–Madsen |
| 30 | 0 | 1 | Hesselholt–Madsen |
| 31 | 1,1,1,1,1,1,1,1,2,2,2,2,3,3,4,6 | 2³² | Hesselholt–Madsen |
| 32 | 0 | 1 | Hesselholt–Madsen |
| 33 | 1,1,1,1,1,1,1,1,2,2,2,2,2,3,3,4,6 | 2³⁴ | Hesselholt–Madsen |
| 34 | 0 | 1 | Hesselholt–Madsen |
| 35 | 1,1,1,1,1,1,1,1,1,2,2,2,2,3,3,3,4,6 | 2³⁶ | Hesselholt–Madsen |
| 36 | 0 | 1 | Hesselholt–Madsen |
| 37 | 1,1,1,1,1,1,1,1,1,1,2,2,2,2,3,3,4,4,6 | 2³⁸ | Hesselholt–Madsen |
| 38 | 0 | 1 | Hesselholt–Madsen |
| 39 | 1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,3,3,4,4,6 | 2⁴⁰ | Hesselholt–Madsen |
| 40 | 0 | 1 | Hesselholt–Madsen |
| 41 | 1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,4,4,6 | 2⁴² | Hesselholt–Madsen |
| 42 | 0 | 1 | Hesselholt–Madsen |
| 43 | 1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,4,4,7 | 2⁴⁴ | Hesselholt–Madsen |
| 44 | 0 | 1 | Hesselholt–Madsen |
| 45 | 1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,3,3,3,4,4,7 | 2⁴⁶ | Hesselholt–Madsen |
| 46 | 0 | 1 | Hesselholt–Madsen |
| 47 | 1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,4,4,7 | 2⁴⁸ | Hesselholt–Madsen |
| 48 | 0 | 1 | Hesselholt–Madsen |
| 49 | 1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,4,4,7 | 2⁵⁰ | Hesselholt–Madsen |
| 50 | 0 | 1 | Hesselholt–Madsen |
| 51 | 1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,4,4,7 | 2⁵² | Hesselholt–Madsen |
| 52 | 0 | 1 | Hesselholt–Madsen |
| 53 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,4,5,7 | 2⁵⁴ | Hesselholt–Madsen |
| 54 | 0 | 1 | Hesselholt–Madsen |
| 55 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,4,5,7 | 2⁵⁶ | Hesselholt–Madsen |
| 56 | 0 | 1 | Hesselholt–Madsen |
| 57 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,4,5,7 | 2⁵⁸ | Hesselholt–Madsen |
| 58 | 0 | 1 | Hesselholt–Madsen |
| 59 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,4,4,5,7 | 2⁶⁰ | Hesselholt–Madsen |
| 60 | 0 | 1 | Hesselholt–Madsen |
| 61 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,4,4,5,7 | 2⁶² | Hesselholt–Madsen |
| 62 | 0 | 1 | Hesselholt–Madsen |
| 63 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,4,4,5,7 | 2⁶⁴ | Hesselholt–Madsen |
| 64 | 0 | 1 | Hesselholt–Madsen |
| 65 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,4,4,5,7 | 2⁶⁶ | Hesselholt–Madsen |
| 66 | 0 | 1 | Hesselholt–Madsen |
| 67 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,4,4,5,7 | 2⁶⁸ | Hesselholt–Madsen |
| 68 | 0 | 1 | Hesselholt–Madsen |
| 69 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,4,4,4,5,7 | 2⁷⁰ | Hesselholt–Madsen |
| 70 | 0 | 1 | Hesselholt–Madsen |
| 71 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,4,4,4,5,7 | 2⁷² | Hesselholt–Madsen |
| 72 | 0 | 1 | Hesselholt–Madsen |
| 73 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,4,4,4,5,7 | 2⁷⁴ | Hesselholt–Madsen |
| 74 | 0 | 1 | Hesselholt–Madsen |
| 75 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,4,4,5,5,7 | 2⁷⁶ | Hesselholt–Madsen |
| 76 | 0 | 1 | Hesselholt–Madsen |
| 77 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,4,4,5,5,7 | 2⁷⁸ | Hesselholt–Madsen |
| 78 | 0 | 1 | Hesselholt–Madsen |
| 79 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,4,4,5,5,7 | 2⁸⁰ | Hesselholt–Madsen |
| 80 | 0 | 1 | Hesselholt–Madsen |
| 81 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,4,4,5,5,7 | 2⁸² | Hesselholt–Madsen |
| 82 | 0 | 1 | Hesselholt–Madsen |
| 83 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,5,5,7 | 2⁸⁴ | Hesselholt–Madsen |
| 84 | 0 | 1 | Hesselholt–Madsen |
| 85 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,5,5,8 | 2⁸⁶ | Hesselholt–Madsen |
| 86 | 0 | 1 | Hesselholt–Madsen |
| 87 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,5,5,8 | 2⁸⁸ | Hesselholt–Madsen |
| 88 | 0 | 1 | Hesselholt–Madsen |
| 89 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,5,5,8 | 2⁹⁰ | Hesselholt–Madsen |
| 90 | 0 | 1 | Hesselholt–Madsen |
| 91 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,4,4,4,5,5,8 | 2⁹² | Hesselholt–Madsen |
| 92 | 0 | 1 | Hesselholt–Madsen |
| 93 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,5,5,8 | 2⁹⁴ | Hesselholt–Madsen |
| 94 | 0 | 1 | Hesselholt–Madsen |
| 95 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,5,5,8 | 2⁹⁶ | Hesselholt–Madsen |
| 96 | 0 | 1 | Hesselholt–Madsen |
| 97 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,5,5,8 | 2⁹⁸ | Hesselholt–Madsen |
| 98 | 0 | 1 | Hesselholt–Madsen |
| 99 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,5,5,8 | 2¹⁰⁰ | Hesselholt–Madsen |
| 100 | 0 | 1 | Hesselholt–Madsen |

Computed with [Syntomic.jl](https://github.com/wgabrielong/Syntomic.jl) (commit `b855a08`) in 21.4 s on 8 threads of an Apple M2 Max, peak memory 2.6 GiB. The cohomology of every weight and its working precision are in [`data/cohomology/Q2_cbrt2_n3.json`](../data/cohomology/Q2_cbrt2_n3.json).
