Definition lem := forall (p : Prop), p \/ ~p.
Definition peirce := forall (p q : Prop), ((p -> q) -> p) -> p.

Theorem lemPeirce : lem <-> peirce.
Proof.
  unfold peirce, lem.
  firstorder.
  