checkFactors :: Int -> Bool
checkFactors num = 0 == sum [num `mod` x | x <- [1..20]]

reduceFact :: Int -> Int -> Int
reduceFact num factor
  | factor == 1 = num
  | num `mod` factor == 0 && checkFactors divided = reduceFact divided factor
  | num `mod` factor == 0 = reduceFact num $ factor - 1
  where 
    divided = num `div` factor

main = do
  let n = product [1..20]
  print $ reduceFact n 20
