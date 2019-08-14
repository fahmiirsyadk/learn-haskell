-- There are two ubiquitous operators for working with lists. Concatenate two list using (++) operator
concat1 :: [Integer]
concat1 = [3,1,3] ++ [3,7]

concat2 :: [Bool]
concat2 = [] ++ [False,True] ++ [True]

-- More basic is the (:) operator, which add an element to the front of a list ( this is pronounced "cons" )
-- cons is short for "construct"

cons1 :: [Integer]
cons1 = 1 : [2,3]

cons2 :: [Integer]
cons2 = 1 : []

{- If you try to writing [1,2] : 3 to add an element to the end of a list, but it will not work.
   Because ghci reject that with an error message. The first argument of (:) must be an element and the second 
   must be a list.
-}