multiply ::Int->Int->Int

multiply a 0 = 0
multiply a b = a + multiply a (b-1)

main :: IO()
main = do 
	putStrLn "Enter number 1:"
	input1 <- getLine
	let a = read input1 :: Int
	
	putStrLn "Enter number 2:"
	input2 <- getLine
	let b = read input2 :: Int
	
	putStrLn $ "Multiplication of "++show a++" and "++show b++" is "++ show (multiply a b)
