module Lab3 where

-----------------------------------------------------------------------------------------------------------------------------
-- LIST COMPREHENSIONS
------------------------------------------------------------------------------------------------------------------------------

-- ===================================
-- Ex. 0 - 2
-- ===================================

evens :: [Integer] -> [Integer]
evens xs = filter even xs 


-- ===================================
-- Ex. 3 - 4 
-- ===================================

-- complete the following line with the correct type signature for this function
-- squares :: ... 
squares n = [ x*x | x <- [1..n]]
squares2 n m = [ (z+m)^2 | z <- [1..n ]]

sumSquares :: Integer -> Integer
sumSquares n = sum (squares n)
sumSquares2 x = sum . uncurry squares2 $ (x,x) 

-- ===================================
-- Ex. 5 - 7
-- ===================================

-- complete the following line with the correct type signature for this function
-- squares' :: ...
squares' m n = [ (z+m)^2 | z <- [1..n]]

sumSquares' :: Integer -> Integer
sumSquares' x = sum . uncurry squares' $ (x, x)

-- ===================================
-- Ex. 8
-- ===================================

coords :: Integer -> Integer -> [(Integer,Integer)]
coords m n = [(x,y) | x <- [0..m], y <- [0..n]]
