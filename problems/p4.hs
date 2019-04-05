isPalindrome :: [Char] -> Bool
isPalindrome [] = True
isPalindrome (x:[]) = True
isPalindrome (x:xs) = x == last xs && isPalindrome xs

multiplyAll :: [Int] -> [Int]
multiplyAll [] = []
multiplyAll (x:xs) = [x * y | y <- xs] ++ multiplyAll xs

main = do
  print $ maximum [x | x <- [x | x <- (multiplyAll [100..999]), isPalindrome $ show x]]
