module Main

main : IO ()
main = return ()

-- First of all, here's our list of bools:
bools : List Bool
bools = [True, False]

record TruthRow : Bool -> Bool -> Bool -> Bool -> Type where
  MkRow : (a : Bool) -> (b : Bool) -> TruthTable a b (a && b) (a || b)
    
