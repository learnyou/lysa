Definition double_negation := forall (X : Prop), X <-> ~(~X).

Definition lem := forall (X : Prop), X \/ ~X.

Definition de_morgan_1 := forall (X Y : Prop), ~(X /\ Y) <-> (~X \/ ~Y).

Theorem de_morgan_2 : forall (X Y : Prop), ~(X \/ Y) <-> (~X /\ ~Y).
Proof.
    firstorder.
Qed.

Theorem classical_de_morgan_1 : (double_negation /\ lem) <-> de_morgan_1.
Proof.
  unfold double_negation, lem, de_morgan_1.
  unfold not.
  firstorder.
  right.