
data Tree a = Leaf
            | Node (Tree a) a (Tree a)
          deriving Show


--repeatTree1 x = Node x x x
--repeatTree2 x = Node t x t
--   where t  = repeatTree2 x
--repeatTree3 x = repeatTree3 (Node Leaf x Leaf)
--repeatTree4 x = Node t x t
--   where t = repeatTree4 (Node t x t)
