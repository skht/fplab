
divides x y = x `mod` y == 0

divisors1 x = [d | d <- [1 .. x], x `divides` d]
divisors2 x = [d | d <- [1 .. x], d `divides` x]
divisors3 x = [d | d <- [2 .. x], x `divides` d]
--divisors4 x = [d | d <- [1 .. x], x divides d]
