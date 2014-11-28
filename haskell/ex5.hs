
find k t = [v | (k', v) <- t, k == k']

p1 x xs = find x ( zip xs [0 .. n])
   where n = length xs - 1
p2 x xs = find x xs 
--p3 x xs = find x ( zipWith (+) xs [0 .. n])
--   where n = length xs - 1
p4 x xs = find n ( zip xs [0 .. n])
   where n = length xs - 1
