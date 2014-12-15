
import Data.List
import Data.Char
import Unsafe.Coerce

data Nat = Zero 
         | Succ Nat 
         deriving Show

natToInteger1 Zero = 0
natToInteger1 (Succ n) = natToInteger1 n + 1

natToInteger2 (Succ n) = natToInteger2 n + 1
natToInteger2 Zero = 0

natToInteger3 n = natToInteger3 n

natToInteger4 (Succ n) = 1 + natToInteger4 n
natToInteger4 Zero = 0

natToInteger5 Zero = 1
natToInteger5 (Succ n) = (1 + natToInteger5 n) - 1

natToInteger6 = head . m
  where m Zero = [0]
        m (Succ n) = [sum [x | x <- (1 : m n)]]

natToInteger7 :: Nat -> Integer
natToInteger7 = \ n -> genericLength [c | c <- show n, c == 'S']

--natToInteger8 :: Nat -> Integer
--natToIngeger8 = \ n -> length [c | c <- show n, c == 'S']

integerToNat1 0 = Zero
integerToNat1 (n+1) = Succ (integerToNat1 n)

integerToNat2 0 = Succ Zero
integerToNat2 n = (Succ (integerToNat2 n))

--integerToNat3 n 
--    = product [(unsafeCoerce ) :: Integer | c <- show n]

integerToNat4 n = integerToNat4 n

integerToNat5 (n+1) = Succ (integerToNat5 n)
integerToNat5 0 = Zero

integerToNat6 (n+1) = let m = integerToNat6 n in Succ m
integerToNat6 0 = Zero

integerToNat7 = head . m
  where {
        ; m 0 = [0]
        ; m ( n + 1 ) = [sum [x | x <- (1 : m n)]]
        }

--integerToNat8 :: Integer -> Nat
--integerToNat8 = \ n -> genericLength [c | c <- show n, isDigit c]

add Zero n = n
add (Succ m) n = Succ (add n m)

add2 (Succ m) n = Succ (add2 n m)
add2 Zero n = n

add3 Zero n = Zero
add3 (Succ m) n = Succ (add3 m n)

add4 (Succ m) n = Succ (add4 m n)
add4 Zero n = Zero

add5 n Zero = Zero
add5 n (Succ m) = Succ (add5 n m)

add6 n (Succ m) = Succ (add6 n m)
add6 n Zero = Zero

add7 n Zero = n
add7 n (Succ m) = Succ (add7 m n)

add8 n (Succ m) = Succ (add8 m n)
add8 n Zero = n

mult Zero Zero = Zero
mult m (Succ n) = add m (mult m n)

mult2 m Zero = Zero
mult2 m (Succ n) = add m (mult2 m n)

mult3 m Zero = Zero
mult3 m (Succ n) = add n (mult3 m n)

mult4 m Zero = Zero
mult4 m n = add m (mult4 m (Succ n))



data Tree = Leaf Integer
          | Node Tree Integer Tree


occurs m (Leaf n) = m == n
occurs m (Node l n r)
  = case compare m n of
        LT -> occurs m l
        EQ -> True
        GT -> occurs m r


occurs2 m (Leaf n) = m == n
occurs2 m (Node l n r)
  = case compare m n of
        LT -> occurs2 m r
        EQ -> True
        GT -> occurs2 m l


--occurs3 m (Leaf n) = compare m n
--occurs3 m (Node l n r)
--  = case compare m n of
--        LT -> occurs3 m l
--        EQ -> True
--        GT -> occurs3 m r

occurs4 m (Leaf n) = m == n
occurs4 m (Node l n r)
  = case compare m n of
        LT -> occurs4 m l
        EQ -> False
        GT -> occurs4 m r

occurs5 m (Leaf n) = m == n
occurs5 m (Node l n r)
  | m == n = True
  | m < n = occurs5 m l
  | otherwise = occurs5 m r


occurs6 m (Leaf n) = m == n
occurs6 m (Node l n r)
  | m == n = True
  | m > n = occurs6 m l
  | otherwise = occurs6 m r

--occurs7 m n = m == n
--occurs7 m (Node l n r)
--  | m == n = True
--  | m < n = occurs7 m l
--  | otherwise = occurs7 m r


--occurs8 m n = m == n
--occurs8 m (Node l n r)
--  | m == n = False
--  | m < n = occurs8 m r
--  | otherwise = occurs8 m l

