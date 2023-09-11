head_ (x:xs) = x  --stdlib function definition

tail_ (x:xs) = xs  --stdlib fucnction definition

safetail2 [] = []          --pattern matching
safetail2 (_:xs) = xs


--pattern representation: [1,2,3,4]- 1:([2,3,4])
--                                   1:(2:([3,4]))
--                                   1:(2:(3:([4])))

luhnDouble d | 2*d<9 = 2*d
             | otherwise = 2*d-9

luhn a b c d = (a1+b+c1+d) `mod` 10 == 0
               where
                   a1 = luhnDouble a
                   c1 = luhnDouble c


