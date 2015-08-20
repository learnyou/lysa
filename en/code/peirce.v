Definition lem := forall (X : Prop), X \/ ~X.

Definition peirce := forall (X Y : Prop), ((X -> Y) -> X) -> X.

Theorem lem_iff_peirce : lem <-> peirce.
  unfold lem, peirce, not.
  firstorder.
  destruct (H X), (H Y).
  pose (fun (_ : X) => H2).
  exact (H0 y).
  exact H1.
  pose (fun (_ : X) => H2).
  exact (H0 y).
  clear H.
  apply H0.
  intros.
  case (H1 H).
  apply H with (Y := ~(X \/ ~X)).
  unfold not.
  intros.
  right.
  intros.
  destruct H0.
  left.
  exact H1.
  left.
  exact H1.
Qed.