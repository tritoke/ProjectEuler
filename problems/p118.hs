import System.IO.Unsafe (unsafePerformIO)
import qualified Data.Set (fromList)

hasUniqueDigits :: String -> Bool
hasUniqueDigits (x:xs)
  | null xs = True
  | '0' `elem` xs = False
  | x `elem` xs = False
  | otherwise = hasUniqueDigits xs

valid :: [String]
valid = filter hasUniqueDigits $ lines . unsafePerformIO . readFile $ "resources/9digitprimes"

lengthSublists :: [[String]]
lengthSublists = reverse [[x | x <- valid, length x <= y] | y <- [1..9]]

concatAll :: [String] -> [[String]]
concatAll set = [x:set | x <- lengthSublists !! index, hasUniqueDigits (concat $ x:set)]
  where index = length $ concat set

generateSet :: [String] -> [[String]]
generateSet set
  | length n == 9 && hasUniqueDigits n = [set]
  | otherwise = concatMap generateSet (concatAll set)
    where n = concat set

main :: IO ()
main = do
  let sets = map Data.Set.fromList $ generateSet []
  let ans = Data.Set.fromList sets
  print $ length ans
