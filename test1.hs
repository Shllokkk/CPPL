init_ xs = reverse (tail (reverse xs)) --init_ because it is a stdlib function

palindrome xs = reverse xs == xs 

fact x = product [1..x] --fact because it is user defined function

zeroto xs = [0..xs] --xs means a list or array

avg xs = sum xs `div` length xs

second xs = head (tail xs)

swap (x,y) = (y,x)

pair x y = (x,y)

double x = x*2 

