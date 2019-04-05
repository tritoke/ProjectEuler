import System.IO
import Data.List

main = do
  let bigNum = 600851475143
  contents <- readFile "/home/tritoke/Code/Haskell/projectEuler/problems/contents/prime_output"
  let primes = map (\x -> read x :: Int) (lines contents)   
  print $ maximum [x | x <- primes, bigNum `mod` x == 0]
