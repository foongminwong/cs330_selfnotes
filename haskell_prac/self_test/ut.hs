import Data.List(foldl', scanl', group)
import GHC.Exts(sortWith)
import Data.Bits(testBit)
import System.Random.Shuffle(shuffleM)
import System.Environment(getArgs)
import Data.Array
import Data.List

absDiff :: Num a => (a,a)-> a
absDiff (a,b) = abs (a-b)

--frotoByNearness :: [Integer] -> [(Integer,Integer)]
--frotoByNearness x = sortWith(absDiff(zip x (tail x)))
--frotoByNearness x = zip x (tail x)

