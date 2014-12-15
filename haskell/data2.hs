data Tree = Leaf Integer
          | Node Tree Tree
          deriving Show

leaves (Leaf x) = x
leaves (Node l r) = leaves l + leaves r
balanced (Leaf _) = True
balanced (Node l r)
  = abs (leaves l - leaves r) <= 1 || balanced l || balanced r

--leaves2 (Leaf _) = True
--leaves2 (Node l r) = leaves2 l + leaves2 r
--balanced2 (Leaf _) = True
--balanced2 (Node l r) = abs (leaves2 l - leaves2 r) <= 1

--leaves3 (Leaf _) = True
--leaves3 (Node l r) = leaves3 l + leaves3 r
--balanced3 (Leaf _) = True
--balanced3 (Node l r) = abs (leaves3 l + leaves3 r) <= 1

leaves4 (Leaf _) = 1
leaves4 (Node l r) = leaves4 l + leaves4 r
balanced4 (Leaf _) = True
balanced4 (Node l r)
  = abs (leaves4 l - leaves4 r) <= 1 && balanced l && balanced r



t1 = Leaf(1)
t2 = Leaf(2)
t3 = Leaf(4)
t4 = Leaf(5)
t6 = Leaf(6)

tN2 = Node t1 t2
tN1 = Node tN2 t3
tN0 = Node tN1 t4
tN = Node t6 tN0
 
halve xs = splitAt (length xs `div` 2) xs
balance [x] = Leaf x
balance xs = Node (balance ys) (balance zs)
  where (ys, zs) = halve xs

