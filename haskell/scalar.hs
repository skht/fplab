
scalar1 xs ys = sum [x * y | x <- xs, y <- ys]
scalar2 xs ys = sum [x * y | (x,y) <- xs `zip` ys]
scalar3 xs ys = product (zipWith (+) xs ys)
--scalar4 xs ys = sum (product[(x,y) | x <- xs, y <- ys])
