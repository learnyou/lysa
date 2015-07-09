Definition injective (A B : Set) (f : A -> B):=
  forall (p q : A) (r : B),
    (f p = r) -> (f q = r) -> (p = q).

Definition surjective (A B : Set) (f : A -> B):=
  forall q : B,
    exists (p : A), f p = q.

Definition bijective (A B : Set) (f : A -> B) :=
  injective A B f /\ surjective A B f.

Definition invertible (A B : Set) (f : A -> B) :=
  exists (g : B -> A),
    forall p : A, g (f p) = p.

Theorem bijection_principle_1 : forall (A B : Set) (f : A -> B) (d : A) (e : B),
                                  bijective A B f -> invertible A B f.
  unfold bijective, invertible.
  unfold injective, surjective.
  firstorder.
  destruct (H0 e).
  case (H d x e) ; firstorder.  
