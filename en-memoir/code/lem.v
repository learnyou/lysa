Definition lem := forall a, (a \/ ~a).
Definition peirce := forall (p q : Prop), ((p -> q) -> p) -> p.

Theorem lem_iff_peirce : lem <-> peirce.
Proof.
  unfold lem, peirce.
  firstorder.
  assert (p \/ ~p).
    firstorder.
    firstorder.