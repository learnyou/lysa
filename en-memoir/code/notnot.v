Lemma contrapos : forall (a b : Prop), (a -> b) -> ~b -> ~a.
Proof.
  firstorder.
Qed.

Theorem a_imp_not_not_a : forall (a : Prop), a -> ~(~a).
Proof.
  firstorder.
Qed.

Theorem triple_neg_neg : forall (a : Prop), ~~~a -> ~a.
Proof.
  firstorder.
Qed.

Theorem quad_neg_doub_neg : forall (a : Prop), ~~~~a -> ~~a.
Proof.
  firstorder.
Qed.

Theorem lem_imp_doub_neg : forall (a : Prop), (a \/ ~a) -> ~~a -> a.
Proof.
  firstorder.
Qed.


Theorem not_doub_neg_iff_not_lem : forall (a : Prop), ~(~~a -> a) <-> ~(a \/ ~a).
Proof.
    firstorder.
Qed.

(* Theorem co7Not : forall (a : Prop), (~~a -> a) <-> (a \/ ~a). *)
(* Proof. *)
(*     unfold not. *)
(*     firstorder. *)
(*     destruct (H _). *)
(* Qed. *)


Definition lem := forall p, p \/ ~p.
Definition frobenius := forall (A : Set) (p : A -> Prop) (q : Prop),
  (forall x : A, q \/ p x) <-> (q \/ (forall x : A, p x)).

Theorem lem_to_frobenius : lem -> frobenius.
Proof.
  unfold lem, frobenius.
  firstorder.
  destruct (H q); firstorder.
Qed.

Theorem frobenius_to_lem : frobenius -> lem.
Proof.
  unfold lem, frobenius.
  firstorder.
  destruct (H {_ : unit | p} (fun _ => False) p).
    firstorder.
Qed.

Definition doub_neg := forall p, ~~p <-> p.

Theorem lem_iff_doub_neg : lem -> doub_neg.
Proof.
  unfold lem, doub_neg.
  firstorder.
  unfold not in H, H0.
  destruct (H p) ; firstorder.
Qed.

Theorem de_Morgan_1 : forall (a b : Prop), ~(a \/ b) <-> (~a /\ ~b).
Proof.
  unfold not.
  firstorder.
Qed.

Theorem de_Morgan_2_1 : forall (a b : Prop), (~a \/ ~b) -> ~(a /\ b).
Proof.
  unfold not.
  firstorder.
Qed.