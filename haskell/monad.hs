

--instance Monad Maybe where
--         return x = Just x
--         Nothing >>= f = Just (f(Nothing))
--         (Just x) >>= f = f x

instance Monad Maybe where
         return x = Just x
         Nothing >>= _ = Nothing
         (Just x) >>= f = f x
