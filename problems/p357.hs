divisors :: Int -> [Int]

divisors n = [x | x <- [1..n], mod n x == 0]

isPrime :: Int -> Bool
isPrime x = sum (divisors x) == x + 1

func :: Int -> Int -> Int
func n d = d + div n d

hasProperty :: Int -> Bool
hasProperty x = all isPrime $ map (func x) $ divisors x

main :: IO()
main = do
  let nums = filter hasProperty [1..100000000 - 1]
  print $ sum nums

