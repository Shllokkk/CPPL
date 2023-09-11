addUs a b = a + b

multiplyUs a 0 = 0
multiplyUs 0 b = 0
multiplyUs a b = |a > 0 && b > 0 = addUs a (multiplyUs a (b-1))
		 |a < 0 && b > 0 = addUs a (multiplyUs a (b-1))
		 |a > 0 && b < 0 = addUs (-a) (multiplyUs a (b+1))
		 |a < 0 && b < 0 = addUs (-a) (multiplyUs a (b+1))

