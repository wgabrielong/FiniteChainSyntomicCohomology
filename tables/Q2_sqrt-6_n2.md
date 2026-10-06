# p-adic K-theory of O_K/ϖ², K = Q₂(√−6)

[All rings](../README.md) · the same data: [`k_theory.json`](../data/k_theory.json), [`k_theory.csv`](../data/k_theory.csv)

The p-adic K-groups K_r(R; Z₂) for 1 ≤ r ≤ 100. As in [AKN, Appendix A], each entry lists the exponents a₁ ≤ a₂ ≤ … of the decomposition K_r(R; Z₂) ≅ Z/2^a₁ ⊕ Z/2^a₂ ⊕ …, and `0` is the zero group (a blank cell in [AKN]). K_0(R; Z₂) = Z₂.

K = Q₂(√−6) is ramified over Q₂, with e = 2 and discriminant exponent 3 (LMFDB [2.1.2.3a1.4](https://www.lmfdb.org/padicField/2.1.2.3a1.4)). R = O_K/ϖ² = Z₂[z]/(E(z), z²) with E(z) = z² + 4z + 10, the defining polynomial of the LMFDB, and ϖ a root of E. |R| = 2².

Since n ≤ e, R = F₂[z]/z². Hesselholt and Madsen computed the K-groups of these rings (cited in [AKN, §1.1, p. 2]): K_{2i−1}(F_q[z]/zⁿ; Z_p) ≅ W_{ni}(F_q)/V_n W_i(F_q) and K_{2i−2}(F_q[z]/zⁿ; Z_p) = 0 for i ≥ 2. Every group below agrees with their formula, so none is new.

O_K/ϖ² is the same ring for K = [Q₂(√−1)](Q2_sqrt-1_n2.md), [Q₂(√3)](Q2_sqrt3_n2.md), [Q₂(√−2)](Q2_sqrt-2_n2.md), [Q₂(√6)](Q2_sqrt6_n2.md), [Q₂(√2)](Q2_sqrt2_n2.md), [Q₂(∛2)](Q2_cbrt2_n2.md) (see the [coincidences](../docs/coincidences.md#across-the-families)), so those tables equal this one.

The last column gives the status: *Hesselholt–Madsen*.

| r | K_r(R; Z₂) | order | status |
|--:|:--|:--|:--|
| 1 | 1 | 2¹ | Hesselholt–Madsen |
| 2 | 0 | 1 | Hesselholt–Madsen |
| 3 | 1,1 | 2² | Hesselholt–Madsen |
| 4 | 0 | 1 | Hesselholt–Madsen |
| 5 | 1,1,1 | 2³ | Hesselholt–Madsen |
| 6 | 0 | 1 | Hesselholt–Madsen |
| 7 | 1,1,1,1 | 2⁴ | Hesselholt–Madsen |
| 8 | 0 | 1 | Hesselholt–Madsen |
| 9 | 1,1,1,1,1 | 2⁵ | Hesselholt–Madsen |
| 10 | 0 | 1 | Hesselholt–Madsen |
| 11 | 1,1,1,1,1,1 | 2⁶ | Hesselholt–Madsen |
| 12 | 0 | 1 | Hesselholt–Madsen |
| 13 | 1,1,1,1,1,1,1 | 2⁷ | Hesselholt–Madsen |
| 14 | 0 | 1 | Hesselholt–Madsen |
| 15 | 1,1,1,1,1,1,1,1 | 2⁸ | Hesselholt–Madsen |
| 16 | 0 | 1 | Hesselholt–Madsen |
| 17 | 1,1,1,1,1,1,1,1,1 | 2⁹ | Hesselholt–Madsen |
| 18 | 0 | 1 | Hesselholt–Madsen |
| 19 | 1,1,1,1,1,1,1,1,1,1 | 2¹⁰ | Hesselholt–Madsen |
| 20 | 0 | 1 | Hesselholt–Madsen |
| 21 | 1,1,1,1,1,1,1,1,1,1,1 | 2¹¹ | Hesselholt–Madsen |
| 22 | 0 | 1 | Hesselholt–Madsen |
| 23 | 1,1,1,1,1,1,1,1,1,1,1,1 | 2¹² | Hesselholt–Madsen |
| 24 | 0 | 1 | Hesselholt–Madsen |
| 25 | 1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹³ | Hesselholt–Madsen |
| 26 | 0 | 1 | Hesselholt–Madsen |
| 27 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹⁴ | Hesselholt–Madsen |
| 28 | 0 | 1 | Hesselholt–Madsen |
| 29 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹⁵ | Hesselholt–Madsen |
| 30 | 0 | 1 | Hesselholt–Madsen |
| 31 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹⁶ | Hesselholt–Madsen |
| 32 | 0 | 1 | Hesselholt–Madsen |
| 33 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹⁷ | Hesselholt–Madsen |
| 34 | 0 | 1 | Hesselholt–Madsen |
| 35 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹⁸ | Hesselholt–Madsen |
| 36 | 0 | 1 | Hesselholt–Madsen |
| 37 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2¹⁹ | Hesselholt–Madsen |
| 38 | 0 | 1 | Hesselholt–Madsen |
| 39 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁰ | Hesselholt–Madsen |
| 40 | 0 | 1 | Hesselholt–Madsen |
| 41 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²¹ | Hesselholt–Madsen |
| 42 | 0 | 1 | Hesselholt–Madsen |
| 43 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²² | Hesselholt–Madsen |
| 44 | 0 | 1 | Hesselholt–Madsen |
| 45 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²³ | Hesselholt–Madsen |
| 46 | 0 | 1 | Hesselholt–Madsen |
| 47 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁴ | Hesselholt–Madsen |
| 48 | 0 | 1 | Hesselholt–Madsen |
| 49 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁵ | Hesselholt–Madsen |
| 50 | 0 | 1 | Hesselholt–Madsen |
| 51 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁶ | Hesselholt–Madsen |
| 52 | 0 | 1 | Hesselholt–Madsen |
| 53 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁷ | Hesselholt–Madsen |
| 54 | 0 | 1 | Hesselholt–Madsen |
| 55 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁸ | Hesselholt–Madsen |
| 56 | 0 | 1 | Hesselholt–Madsen |
| 57 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2²⁹ | Hesselholt–Madsen |
| 58 | 0 | 1 | Hesselholt–Madsen |
| 59 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁰ | Hesselholt–Madsen |
| 60 | 0 | 1 | Hesselholt–Madsen |
| 61 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³¹ | Hesselholt–Madsen |
| 62 | 0 | 1 | Hesselholt–Madsen |
| 63 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³² | Hesselholt–Madsen |
| 64 | 0 | 1 | Hesselholt–Madsen |
| 65 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³³ | Hesselholt–Madsen |
| 66 | 0 | 1 | Hesselholt–Madsen |
| 67 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁴ | Hesselholt–Madsen |
| 68 | 0 | 1 | Hesselholt–Madsen |
| 69 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁵ | Hesselholt–Madsen |
| 70 | 0 | 1 | Hesselholt–Madsen |
| 71 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁶ | Hesselholt–Madsen |
| 72 | 0 | 1 | Hesselholt–Madsen |
| 73 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁷ | Hesselholt–Madsen |
| 74 | 0 | 1 | Hesselholt–Madsen |
| 75 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁸ | Hesselholt–Madsen |
| 76 | 0 | 1 | Hesselholt–Madsen |
| 77 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2³⁹ | Hesselholt–Madsen |
| 78 | 0 | 1 | Hesselholt–Madsen |
| 79 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁰ | Hesselholt–Madsen |
| 80 | 0 | 1 | Hesselholt–Madsen |
| 81 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴¹ | Hesselholt–Madsen |
| 82 | 0 | 1 | Hesselholt–Madsen |
| 83 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴² | Hesselholt–Madsen |
| 84 | 0 | 1 | Hesselholt–Madsen |
| 85 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴³ | Hesselholt–Madsen |
| 86 | 0 | 1 | Hesselholt–Madsen |
| 87 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁴ | Hesselholt–Madsen |
| 88 | 0 | 1 | Hesselholt–Madsen |
| 89 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁵ | Hesselholt–Madsen |
| 90 | 0 | 1 | Hesselholt–Madsen |
| 91 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁶ | Hesselholt–Madsen |
| 92 | 0 | 1 | Hesselholt–Madsen |
| 93 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁷ | Hesselholt–Madsen |
| 94 | 0 | 1 | Hesselholt–Madsen |
| 95 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁸ | Hesselholt–Madsen |
| 96 | 0 | 1 | Hesselholt–Madsen |
| 97 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁴⁹ | Hesselholt–Madsen |
| 98 | 0 | 1 | Hesselholt–Madsen |
| 99 | 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 | 2⁵⁰ | Hesselholt–Madsen |
| 100 | 0 | 1 | Hesselholt–Madsen |

Computed with [Syntomic.jl](https://github.com/wgabrielong/Syntomic.jl) (commit `b855a08`) in 4.9 s on 8 threads of an Apple M2 Max, peak memory 1.7 GiB. The cohomology of every weight and its working precision are in [`data/cohomology/Q2_sqrt-6_n2.json`](../data/cohomology/Q2_sqrt-6_n2.json).
