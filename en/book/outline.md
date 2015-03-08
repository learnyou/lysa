# Outline

## §1 Introduction

Sets, proofs, functions introduction

### §1.1 How to read the book
### §1.2 Actual introduction
### §1.3 The community
### §1.4 Idris
### §1.5 Target audience
### §1.6 Licensing
### §1.7 Conventions used throughout

## §2 Simple logic

### §2.1 Implications

1. (A ==> B) = (B <== A)
2. (A ==> B) && (B <== A) = (A <=> B)
3. !(A ==> B) = (!A <== !B)

### §2.2 And and or

1. !(A && B) = (!A || !B)
2. !(A || B) = (!A && !B)
3. #4 <==> #5

## §3 Sets

### §3.1 Sets & Examples

1. Sets vs Lists
2. Elements

### §3.2 Proper & improper subsets

1. Subsets & supersets
2. Proper & improper

### §3.3 Unions and Intersections

## §4 Functions

1. Functions of one variable
2. Functions of two variables
3. Lambda calculus

### §4.1 Currying
### §4.2 Function vocabulary
* Need more examples
### §4.3 Piecewise functions

## §5 More set stuff

* id, flip, compose
* Set subtraction
* complements
* Cartesian product

## §6 ZFC

### §6.1 Cartesian products
### §6.2 Function plots
### §6.3 Equivalence classes
### §6.4 Peano axioms, basic arithmetic
### §6.5 Common sets

1. Definition of N, Z, Q, and R
2. Definition of continuity
3. R is continuous, N and Z are discrete.
  
### §6.6 Cardinalities

4. N's cardinality, aleph-null, should be the cardinality for discrete
   sets. 
5. Bring up Galileo's paradox: N c= N^2 . N > N^2, so it should be the case that
   N c> N^2, right? Well, no. There are a number of paradoxes like this - where
   we can find a bijection from an infinite set onto a subset of itself. When
   discussing infinite set, the solution is to not consider terms like "larger"
   and "smaller"

   What about Z? Z > N, so it should have a strictly larger cardinality, right?
   Hmm...

6. Let's look at R. (Use diagonal argument to show that R's cardinality is
   greater than N's)
   
7. Let's look at Q? Is Q a continuum, like R, or is Q a discrete set like Z or
   N?

### §6.7 Continuum hypothesis

8. Barber paradox

## §A FDL 
## §B How to learn math
## §C Philosophy
## §D Identities
## §E Graph source code
## §G Proofs
### §5.1 Proof techniques
### §5.2 Peano axioms

Prove everything about arithmetic
