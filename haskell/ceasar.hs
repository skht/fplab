import Data.Char

let2int c = 
  if (ord c - ord 'a') < 0 then (ord c - ord 'A')
  else (ord c - ord 'a')

int2let n = chr (ord 'a' + n)

shift n c 
  | isLower c = int2let ((let2int c + n) `mod` 26)
  | otherwise = c

encode n xs = [shift n x | x <- xs]
