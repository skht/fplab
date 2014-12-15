putStr' [] = return ()
putStr' (x : xs) = putChar x >> putStr' xs


getLine1 = get1 ""

get1 :: String -> IO String
get1 xs
   = do x <- getChar
        case x of
          ' ' -> return xs
          '\n' -> return xs
          _ -> get1 (xs ++ [x])

getLine2 = get2 ""
get2 :: String -> IO String
get2 xs
   = do x <- getChar
        case x of
         '\n' -> return xs
         _ -> get2(x : xs)

getLine' = get3 []
get3 :: String -> IO String
get3 xs
   = do x <- getChar
        case x of
             '\n' -> return xs
             _ -> get3 (xs ++ [x])

getLine4 = get4 []
get4 :: String -> IO String
get4 xs
   = do x <- getChar
        case x of
             '\n' -> return (x : xs)
             _ -> get4 (xs ++ [x])


interact1 f 
  = do input <- getLine
       putStrLn (f input)

sequence' [] = return []
sequence' (m : ms) 
   = do a <- m
        as <- sequence' ms
        return (a : as)

filterM' _ [] = return []
filterM' p (x : xs)
  = do flag <- p x
       ys <- filterM' p xs
       if flag then return ys else return (x : ys) 

mapM' f [] = return []
mapM' f (a : as) 
    = f a >>= 
        \ b ->
          do bs <- mapM' f as
             return (bs ++ [b])
