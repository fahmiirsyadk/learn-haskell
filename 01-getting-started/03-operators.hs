{- Operators Precendence and Associativity
   Like written algebra and other programming languages that use infix operators,
   Haskell has a notion of operator precendence. We can use parenthes to explcity group parts
   of an expression and precendece allow us to ommit a few parentheses.
-}

-- this two things is resulting same

express1 :: Int
express1 = 1 + ( 4 * 4 )

express2 :: Int
express2 = 1 + 4 * 4

{- Haskell assigns numeric precedence values to operators, with 1 being the lowest
   precendence and 9 the highest. A higher-precendece operator is applied before a lower
   precendence operator. We can use ghci to inspect the precendence levels of individual
   operators, using ghci's :info command:
      ghci> :info (+)
      class (Eq a, Show a) => Num a where.
         (+) :: a -> a -> a
         ...
            -- Defined in GHC.Num
         infixl 6 +
      ghci> :info (*)
      class (Eq a, Show a) => Num a where
         ...
         (*) :: a -> a -> a
         ...
            -- Defined in GHC.Num
         infixl 7 *

   The information we seek in the line infixl 6 +, which indicates that the (+) operator
   has a precedence of 6 and (*) operator has a precedence of 7. Since (*) has a higher
   precendence than (+), we can now see why 1 + 4 * 4 is evaluated as 1 + (4 * 4), and
   not (1 + 4) * 4.
-}

{- Haskell also defines associativy of operators. This determines whether an expression containing multiples
   uses of an operator is evaluated from left to right or right to left.

   The (+) and (*) are left associative, which is represented as infixl in the precending ghci ouput. A right
   associative operator is displayed with infixr:
      ghci> :info (^)
      (^) :: (Num a, Integral b) => a -> b -> b -> a  -- Defined in GHC.Real
      infixr 8 ^
-}

-- The combination of precendence and associativy rules are usually reffered to as fixitty rules.
