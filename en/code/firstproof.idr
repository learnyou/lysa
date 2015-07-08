module MyFirstProof

myFirstProof : {A : Type} -> {B : Type} -> A -> ((A -> B) -> B)
myFirstProof x f = f x

notNot1 : {a : Type} -> a -> Not (Not a)
notNot1 x = \__pi_arg => (__pi_arg) x

notNot2 : {a : Type} -> Not (Not a) -> a
notNot2 (Not (Not x)) = x
