module Proof

a_NotNotA : a -> Not (Not a)
a_NotNotA x = \__pi_arg => (__pi_arg) x

notNotNotA_NotA : Not (Not (Not a)) -> Not a
notNotNotA_NotA x = ?astars

