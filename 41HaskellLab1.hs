--1.Define a user-defined function last_that selects the last element of a non-empty list.

last_ xs = head (reverse xs)

--2.Define a user-defined function init_that removesthe last element of a non-empty list.For example, init_ [1,2,3,4,5] = [1,2,3,4].

init_ xs = reverse(tail(reverse xs))

--3.Define a user-defined function even_that decides whether a given number is even.

even_ x = x `mod` 2 ==0

--4.Define a user-defined function splitAt_that splits the list at the nth element.

splitAt_ n xs = (take n xs, drop n xs)

--5.Define a user-defined function abs_that returns the absolute value of a given number using: a.If -then -else b.Guarded equations

abs_ x = if x>0 then x else if x==0 then 0 else -x

guardedabs n | n>0 = n 
             | n==0 = 0           
             | otherwise = -n

--6.Define a user-defined function signum_that returns the sign of a given integer. a.If –then -else b.Guarded equation

signum_ x = if x<0 then -1 else if x==0 then 0 else 1

guardedsignum n | n<0 = -1
                | n==0 = 0
                | otherwise = 1

--7.Define a user-defined functionhalvethat splits an even-lengthed list into two halves.

halve xs = splitAt_ (length xs `div` 2) xs

--8.Define a user-defined function third that returns the third element in a list using i)Head and tail ii)List indexing !!iii)Pattern matching

third xs = head (tail (tail xs))

third1 xs = xs !! 2

third2 (_:_:x:_) = x

--9.Consider a function safetail that behaves in the same way as tail except that it maps the empty list to itself rather than producing an error. Using tail and the function null that decides if a list is empty or not, define safetail using: a.A conditional expression b.Guarded equations c.Pattern matching 

safetail xs = if null xs then [] else tail xs

safetail1 xs | null xs = []      
             | otherwise = tail xs

safetail2 (x:xs) = xs

--10. Define a function luhnDouble that doubles a digit and subtracts 9 if the result is greater than 9. 

luhnDouble d | 2*d<9 = 2*d
             | otherwise = 2*d-9

luhn a b c d = (a1+b+c1+d) `mod` 10 == 0
               where
                   a1 = luhnDouble a
                   c1 = luhnDouble c



--OUTPUT:

{-

$ ghci HaskellLab41.hs
GHCi, version 7.10.3: http://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Main             ( HaskellLab41.hs, interpreted )
Ok, modules loaded: Main.
*Main> last_ [1,2,3,4]
4
*Main> init_ [1,2,3,4]
[1,2,3]
*Main> even_ 7
False
*Main> splitAt_ 4 [1,3,4,6,7,5,8,9]
([1,3,4,6],[7,5,8,9])
*Main> abs_ 4
4
*Main> guardedabs 0
0
*Main> signum_ 2
1
*Main> guardedsignum 8
1
*Main> halve [1,2,3,4,5,6]
([1,2,3],[4,5,6])
*Main> third [2,4,7,6,3]
7
*Main> third1 [2,6,5,8]
5
*Main> third2 [1,2,3,4,5]
3
*Main> safetail []
[]
*Main> safetail [1,4,5,6,7]
[4,5,6,7]
*Main> safetail [1,2,3,4,5,6]
[2,3,4,5,6]
*Main> luhnDouble 8
7
*Main> luhn 1 2 3 4
False

-}

















