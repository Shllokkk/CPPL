abs_ n = if n>0 then n else -n --normal eqn syntax

--it gets difficult to use more if-else then if there are more conditions.

guardedabs n | n>0 = n 
             | n==0 = 0           --guarded eqn syntax
             | otherwise = -n

--it is easier to use if more conditions exist.

guardedsignum n | n<0 = -1
                | n==0 = 0
                | otherwise = 1

safetail xs = if null xs then []  --normal eqn
              else tail xs 

safetail1 xs | null xs = []       --guarded eqn 
             | otherwise = tail xs


