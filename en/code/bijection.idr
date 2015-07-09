module Bijection

using (a : Type
      ,b : Type
      ,p : a
      ,q : a
      ,r : b):
  data Injection : (a -> b) -> Type where
    ProveInjection : (f : a -> b) 
                  -> ((f p = r) -> (f q = r) -> (p = q))
                  -> ((p = q) -> (f p = r) -> (f q = r))
                  -> Injection

  data Surjection : (a -> b) -> Type where
    ProveSurjection : (f : a -> b)
                   -> (f )
