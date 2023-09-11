even_ n = n `mod` 2==0 

splitAt_ n xs = (take n xs, drop n xs) 

abs_ n = if n>0 then n else -n

signum_ n = if n<0 then -1 else
                   if n==0 then 0 else 1

--two methods to define the same function 

halve xs = splitAt_ (length xs `div` 2) xs  --one

half xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)  --two

third xs = head (tail (tail xs))  --one

three xs = head (drop 2 xs)       --two
