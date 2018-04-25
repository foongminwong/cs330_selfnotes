import System.Environment

factors n = filter (\x -> n `mod` x == 0) [1..n]

main = do
  args <- getArgs
  let nString = head args
  let n = read nString :: Int
  putStrLn $ show $ factors n
  return ()
