import Data.List (sort)
import System.IO.Unsafe (unsafePerformIO)

alternate :: Int -> String -> Int
alternate mult str = sum (map (\x -> fromEnum x - 64) str) * mult

main :: IO()
main = print $ sum $ zipWith alternate [1..] $ sort $ words [if x == ',' then ' ' else x | x <- filter (/='\"') (unsafePerformIO . readFile $ "resources/p022_names.txt")]
