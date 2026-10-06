# The data files

[Back to the tables](../README.md)

[`data/k_theory.json`](../data/k_theory.json) and [`data/k_theory.csv`](../data/k_theory.csv)
hold all the groups of the tables. The cohomology behind them is in
[`data/cohomology`](../data/cohomology), one file per ring in the format `syntomic-results-v1`
of Syntomic.jl's `save_results`, and the record of each computation in
[`data/runs`](../data/runs).

**`k_theory.json`** has the fields `format` (`"finite-chain-k-theory-v3"`), `akn`,
`conventions` and `rings`. Each ring has these fields:

- `id`, `ring`, and `family`, which is `"akn_appendix_A"`, `"quadratic"` or `"cubic"`;
- `field`, `lmfdb_label` and `defining_polynomial`: the field K, with its label and polynomial
  in the LMFDB;
- `p`, `f`, `e`, `n`, `htilde`, `E`: the ring W(F_q)[z]/(E(z), zⁿ), where W(F_q) = Z_p[x]/(h̃).
  `htilde` lists the coefficients of h̃ from low to high degree, and `E[k+1]` the coordinates of
  the coefficient of z^k in the basis 1, x, …, x^(f−1). This is the input of Syntomic.jl's
  `finite_chain_ring(p, htilde, E, n)`;
- `akn`: the section, page, label and last degree of the ring's table in [AKN], or `null`;
- `computation`: the contents of `data/runs`;
- `groups`: one entry per degree, for example

```json
{"r": 25, "exponents": [1,1,1,2,2,3,4,12], "status": "x", "new": true}
```

`exponents` is the sorted list of the a_j, with `[]` for the zero group. `status` is one of the
following:

- `"printed"`, `"x"` or `"beyond"` for the rings of [AKN, Appendix A];
- `"hesselholt_madsen"` for the rings F_p[z]/zⁿ, n ≤ e (K ramified);
- `"not_in_akn"` otherwise.

`new` is true for `"x"`, `"beyond"` and `"not_in_akn"`.

**`k_theory.csv`** has the columns `id,ring,field,p,f,e,n,r,exponents,order_exponent,status,new`.
In `exponents` the a_j are separated by `;`, and the field is empty for the zero group.
`order_exponent` is a₁ + … + a_k.
