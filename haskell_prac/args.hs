import Control.Monad
import Control.Monad.Random
import Data.List(foldl', scanl', group)
import GHC.Exts(sortWith)
import Data.Bits(testBit)
import System.Random.Shuffle(shuffleM)
import System.Environment(getArgs)
import Data.List
import System.Random




factors n = filter (\x -> mod n x == 0) [1..n]

main = do
  args <- getArgs              -- unwrap from the IO
  let arg0 = head args          -- pull out just the first
  let n = read arg0 :: Int     -- parse the int
  putStrLn $ show $ factors n
