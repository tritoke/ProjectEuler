main :: IO()
main = do
  contents <- readFile "resources/p13_num_list"
  let nums = [read x :: Integer | x <- lines contents]
  let numStr = show $ sum nums
  putStrLn $ take 10 numStr
