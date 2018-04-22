getInt :: IO Int
getInt = do
  line <- getLine
  let int = read line :: Int
  return int

main = do
  putStr "A: "
  a <- getInt
  putStr "B: "
  b <- getInt
  putStrLn $ show $ take a $ repeat b
