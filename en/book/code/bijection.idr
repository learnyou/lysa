module Bijection

using (f : a -> b
      ,p : a
      ,q : a
      ,r : b):
 bijectionPrinciple : f p = r -> f q = r -> p = q
