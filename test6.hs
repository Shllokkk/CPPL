factorial :: Int->Int
factorial 0 = 1
factorial n = n * factorial(n-1)

main :: IO()
main = do
	putStrLn "Enter a number"
	input <- getLine
	let n = read input :: Int
	if n >= 0 then putStrLn $ "Factorial of " ++show n++ " is "++show (factorial n)
		  else putStrLn "Invalid input! Enter a non negative number"
