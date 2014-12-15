
--removeone1 x [] = [x]
--removeone1 x ys 
--  | x == head ys = ys
--  | otherwise = y : removeone1 x ys


removeone2 x [] = []
removeone2 x (y : ys)
  | x == y = ys
  | otherwise = x : removeone2 y ys

removeone3 x [] = []
removeone3 x ys 
  | x == head ys = ys
  | otherwise = removeone3 x ys

removeone x [] = []
removeone x (y : ys)
  | x == y = ys
  | otherwise = y : removeone x ys

isChoice1 [] _ = True
isChoice1 (x : xs) [] = False
isChoice1 (x : xs) ys = elem x ys && isChoice1 xs (removeone x ys)

isChoice2 [] _ = False
isChoice2 (x : xs) [] = True
isChoice2 (x : xs) (y : ys) = elem y xs && isChoice2 xs (removeone x ys)

--isChoice3 [] _ = True
--isChoice3 xs [] = True
--isChoice3 xs ys = elem (head xs) ys && isChoice3 xs (removeone (head y) ys)

isChoice4 [] _ = True
isChoice4 (x : xs) [] = False
isChoice4 (x : xs) ys = elem x ys && isChoice4 (removeone x xs) ys

split :: [a] -> [([a],[a])]
split [] = []
split (x : xs) = ([x], xs)  : (split xs)

split2 :: [a] -> [([a], [a])]
split2 [] = []
split2 (x :xs) = [(x : ls, rs) | (ls, rs) <- split2 xs]

split3 :: [a] -> [([a], [a])]
split3 [] = []
split3 [_] = []
split3 (x : xs) = ([x], xs) : [(x : ls, rs) | (ls, rs) <- split3 xs]
