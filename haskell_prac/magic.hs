magic_function :: IO Integer -> String -> IO String
magic_function num msg = do
                            n <- num
                            return (msg ++ (show n))

magic :: IO Integer -> String -> IO String
magic ios s =
  do i <- ios
     return $ s ++ ": " ++ (show i)
