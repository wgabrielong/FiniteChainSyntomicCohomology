# The quadratic and cubic fields

[Back to the tables](../README.md)

The quadratic and cubic extensions K of Q₂, Q₃, Q₅ and Q₇ are taken from the LMFDB's database
of p-adic fields, with their labels and defining polynomials:

| p | quadratic extensions | cubic extensions |
|--:|:--|:--|
| 2 | [7](https://www.lmfdb.org/padicField/?p=2&n=2) | [2](https://www.lmfdb.org/padicField/?p=2&n=3) |
| 3 | [3](https://www.lmfdb.org/padicField/?p=3&n=2) | [10](https://www.lmfdb.org/padicField/?p=3&n=3) |
| 5 | [3](https://www.lmfdb.org/padicField/?p=5&n=2) | [2](https://www.lmfdb.org/padicField/?p=5&n=3) |
| 7 | [3](https://www.lmfdb.org/padicField/?p=7&n=2) | [4](https://www.lmfdb.org/padicField/?p=7&n=3) |

## How the rings are presented

Each ring is R = O_K/ϖⁿ = W(F_q)[z]/(E(z), zⁿ) [AKN, §7.1, Input, p. 53], built from the
LMFDB's defining polynomial of K:

- For a ramified field the polynomial is Eisenstein. It serves as E, so that
  O_K/ϖⁿ = Z_p[z]/(E(z), zⁿ) with ϖ a root of E.
- For the unramified field of degree f it is the Conway polynomial h̃ of F_{p^f}, and presents
  W(F_{p^f}) = Z_p[x]/(h̃). Then ϖ = p and O_K/pⁿ = W_n(F_{p^f}).

The ring O_K/ϖⁿ = O_K/𝔪ⁿ does not depend on the choice of ϖ.
[`scripts/rings.jl`](../scripts/rings.jl) lists every ring in this form.

## The names of the fields

- **Quadratic fields.** K = Q_p(√d), where d is the discriminant of the defining polynomial,
  up to squares. The square classes of Q_p are written {1, u, p, up}, with u = −1 for p = 3, 7
  and u = 2 for p = 5; for p = 2 they are those of ±1, ±2, ±3 and ±6. When the polynomial is
  that of the square root of another representative, both names are given: x² + 2x + 6 has the
  roots −1 ± √−5, and Q₂(√3) = Q₂(√−5).
- **Unramified cubic fields.** The unramified cubic extension of Q_p is Q_p(ζ_m) for the least m
  such that p has order 3 modulo m: Q₂(ζ₇), Q₃(ζ₁₃), Q₅(ζ₃₁) and Q₇(ζ₉).
- **Ramified cubic fields.** A field defined by x³ + a is Q_p(∛a), since −1 is a cube.
  Q₃(∛2), Q₃(∛12) and Q₃(∛6) are defined by x³ + 3x + 3, x³ + 9x + 3 and x³ + 18x + 3, and
  Q₃(ζ₉)⁺ = Q₃(ζ₉ + ζ₉⁻¹) by x³ + 6x² + 3. The four other ramified cubic extensions of Q₃ have
  no such name. They are written Q₃[x]/(polynomial), and their files are named by their LMFDB
  labels.

`check_name` in [`scripts/build.jl`](../scripts/build.jl) checks every name: the field
contains a root of x² − d, x³ − a, the cyclotomic polynomial Φ_m or x³ − 3x + 1, and Q_p does
not. Since [K : Q_p] is prime, that root generates K. The search for the root is exhaustive
modulo p^j for increasing j, and Newton's lemma certifies the root it finds.
