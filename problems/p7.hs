main :: IO()
main = do
  fileData <- readFile "/home/tritoke/Code/Haskell/projectEuler/problems/resources/prime_output"
  let primes = [read x :: Int | x <- lines fileData]
  print $ primes !! 10000
