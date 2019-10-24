{-- TYPES on HASKELL
   - Char: Represent a Unicode Character
   - Bool: Represent a value in boolean logic, only to bool values (True, False)
   - Int: Used for signed, fixed length-width integer values. Int is usually 32 bits wide, while on a 64-bit machine, it is usually 64 bits wide.
   - Integer: A signed integer of unbounded size. Integers are not used as often as Ints, because they are more expensive both in performance and space consumption.
   - Double: Used for floating-point numbers. A Double value typically 64 bit wide and uses the system native floating-point representation.
      (A narrower type, Float, also exists, but its use is discouraged; Haskell compiler writers concentrate more on making Double efficient, so Float is much slower.)
-}

imChar :: Char
imChar = 'a'

imBool :: Bool
imBool = True

imInt :: Int
imInt = 20 + 1

imInteger :: Integer
imInteger = 20000 * 299900012

imDouble :: Double
imDouble = 2.3