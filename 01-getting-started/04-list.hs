{- A list surrounded by square brackets, the elements are separated by commas:
      ghci>[1, 2, 3]
   Some languages permit the last element in a list to be followed by an optional
   trailing comma before a closing bracket, but haskell doesn't allow that. It will
   only get parse error.
      example: [1,2,4,] <- this is not valid list
-}


-- All element of list must be same type
list1 :: [Integer]
list1 = [1,2,3]

list2 :: [String]
list2 = ["alpha","beta","cannary","delta","echo","fahmi"]

-- A list can be any length. An empty list is written []
list3 :: [a]
list3 = []

-- If we write a series of element using enumaration notation
{- Here, the... charactes denote an enumerate . We can only see this notation for types whose elements we can enumerate 
   It make no sense for text strings, for instance there is not any sensible, general way to enumerate ["foo".."quux"]
-}
list4 :: [Integer]
list4 = [1..10]

{-
   Notice that preceding use of range notation give us a closed interval: the list contains both enpoints.
   When we write an enumeration, we can optionally specify the size of the step to by providing the first to elements,
   followed by the value at which to stop generating the enumeration.
-}

list5 :: [Integer]
list5 = [10,9..1]

list6 :: [Double]
list6 = [1.0,1.25..2.0]
