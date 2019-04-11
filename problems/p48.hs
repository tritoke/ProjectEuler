getLastTen :: String -> String
getLastTen x
  | length x > 10 = getLastTen $ tail x
  | otherwise     = x


main :: IO ()
main = putStrLn $ getLastTen $ show $ sum [ x^x | x <- [1..1000] ]
