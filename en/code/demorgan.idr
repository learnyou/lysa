module DeMorgan

data Conjunction a b = And a b
data Disjunction a b = Left a
                     | Right b

DoubleNegRight : Type -> Type
DoubleNegRight x = x -> Not (Not x)

DoubleNegLeft : Type -> Type
DoubleNegLeft x = Not (Not x) -> x

LEM : Type -> Type
LEM x = Disjunction x (Not x)

DeMorgan0 : Type -> Type -> Type 
DeMorgan0 x y = Not (Conjunction x y) -> Disjunction (Not x) (Not y)

DeMorgan1 : Type -> Type -> Type 
DeMorgan1 x y = Disjunction (Not x) (Not y) -> Not (Conjunction x y)

DeMorgan2 : Type -> Type -> Type 
DeMorgan2 x y = Not (Disjunction x y) -> Conjunction (Not x) (Not y)

DeMorgan3 : Type -> Type -> Type 
DeMorgan3 x y = Conjunction (Not x) (Not y) -> Not (Disjunction x y)

