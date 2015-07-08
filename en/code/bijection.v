Definition injective :
  forall (f : a -> b, p q : a, r : b),
    (f p  r) -> (f q = r) -> (p = q).