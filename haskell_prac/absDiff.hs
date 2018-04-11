import Data.List
import Data.Char
import Data.Ord
import Data.Function
import GHC.Exts

--absDiff :: Num a => a -> a -> a
--absDiff n = abs . (n-)

absDiffOrder :: Num a => (a,a) -> a
absDiffOrder (a,b) = abs $ a-b
