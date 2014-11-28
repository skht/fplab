factors n = [x | x <- [1..n], n`mod` x == 0] 
perfects n = [x | x <- [1..n]]

perfects1 n = [x | x <- [1..n], isPerfect x]
	where isPerfect num = sum (factors num) == num

perfects2 n = [x | x <- [1..n], isPerfect x]
	where isPerfect num = sum (init(factors num)) == num

perfects3 n = [isPerfect x | x <- [1..n]]
	where isPerfect num = sum (init(factors num)) == num

--perfects4 n = [x | x <- [1..n], isPerfect x]
-- 	where isPerfect num = init (factors num) == num

source = [(x,y) | x <- [1,2,3], y <- [4,5,6]]

ans1 = [z | z <- [[(x,y) | y <- [4,5,6]] | x <- [1,2,3]]]
ans2 = concat [[[(x,y)] | x <- [1,2,3]] | y <- [4,5,6]]
--ans3 = concat [(x,y) | y <- [4,5,6]] | x <- [1,2,3] 
ans4 = concat [[(x,y) | y <- [4,5,6]] | x <- [1,2,3]]

-- after this run `ps -ef | grep ghc` in separate window and kill the counting process
eval = [(x,y) | x <- [1,2], y <- [1,2]]
