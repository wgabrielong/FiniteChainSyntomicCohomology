# How the groups were computed and checked

[Back to the tables](../README.md)

- **Computation.** For each ring, Syntomic.jl computes the syntomic complexes Z_p(i)(R) of
  [AKN, Thm. 1.1, p. 3] for 1 ≤ i ≤ 51.
  - It uses the algorithm of [AKN, §7.1, pp. 53–57], and takes the cohomology from the Smith
    normal forms of the two differentials.
  - Each ring is one sweep over its weights, `syntomic_sweep(R, [n], 1:51)`. The ring
    `R = finite_chain_ring(p, htilde, E, n)` is built from [`scripts/rings.jl`](../scripts/rings.jl).
  - Each sweep runs in a fresh Julia process ([`scripts/compute.jl`](../scripts/compute.jl)).
- **Certification.** The cohomology is correct once three conditions hold
  [AKN, Lemma 7.1, p. 57; Remark 7.3, p. 58]:
  - both differentials are known modulo p^M;
  - both have full rank modulo p^M;
  - neither has an elementary divisor of valuation M or more.

  Syntomic.jl checks this for every weight, and raises an error rather than return an answer it
  cannot certify. The working precision of each weight is recorded in `data/cohomology`.
- **Checks.** [`scripts/build.jl`](../scripts/build.jl) writes the tables. It stops with an error
  unless all of these hold:
  - the cohomology files are those of the rings of `scripts/rings.jl`;
  - Angeltveit's quotient |H¹(Z_p(i))| / |H²(Z_p(i))| = q^(i(n−1)) [AKN, Prop. 2.18, p. 9]
    holds for every weight of every ring;
  - every group printed in [AKN, Appendix A] equals the computed one (799 groups);
  - for the rings F_p[z]/zⁿ, n ≤ e, every group equals the one given by Hesselholt and Madsen's
    formula (cited in [AKN, §1.1, p. 2]);
  - isomorphic rings have the same groups (see the [coincidences](coincidences.md));
  - every field contains a root of the polynomial its name refers to (see
    [the names of the fields](fields.md#the-names-of-the-fields)).

  The workflow [`check`](../.github/workflows/check.yml) reruns `build.jl --check` on every push.
  It fails if any check fails, or if a table no longer matches the data.
