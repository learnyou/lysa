Definition double_negation := forall (X : Prop), X <-> ~(~X).

Definition lem := forall (X : Prop), X \/ ~X.

Definition de_morgan_1_1 := forall (X Y : Prop), ~(X /\ Y) -> (~X \/ ~Y).
Definition de_morgan_1_2 := forall (X Y : Prop), (~X \/ ~Y) -> ~(X /\ Y).

Definition de_morgan_2_1 := forall (X Y : Prop), ~(X \/ Y) -> (~X /\ ~Y).
Definition de_morgan_2_2 := forall (X Y : Prop), (~X /\ ~Y) -> ~(X \/ Y).

Theorem dm11 : (lem /\ double_negation) -> de_morgan_1_1.
Proof.
  unfold lem, double_negation, de_morgan_1_1, not.
  firstorder.
  destruct (H X).
  destruct (H Y).
  right.
  exact (H0 H2).
  right.
  exact (H0 H2).
  left.
  exact H2.
Qed.

Theorem dm12 : de_morgan_1_2.
Proof.
  unfold de_morgan_1_2, not.
  intros.  
  destruct H, H0.
  exact (H H0).
  exact (H H1).
Qed.

Theorem dm21 : de_morgan_2_1.
Proof.
  unfold de_morgan_2_1, not.
  intros.
  refine (conj _ _).
    intros.
    destruct H.
    left.
    assumption.
    intros.
    destruct H.
    right.
    assumption.
Qed.

Theorem dm22 : de_morgan_2_2.
Proof.
  unfold de_morgan_2_2, not.
  intros.
  destruct H, H0.
  exact (H H0).
  exact (H1 H0).
Qed.