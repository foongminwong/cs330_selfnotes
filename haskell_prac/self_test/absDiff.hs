module absDiff where 
import Data.List
import Data.Char
import Data.Ord
import Data.Function
import Data.Array
import GHC.Exts

--absDiff :: Num a => a -> a -> a
--absDiff n = abs . (n-)

absDiffOrder :: (Num a, Ord a) => (a,a) -> a
absDiffOrder (a,b) = abs $ a-b

fr :: [Inetger] -> [(Integer,Integer)]
fr x = 
	if length x < 2
	rhen []
	else do
	let a = x
	let b = tail x
	let xs = zip a b
	sortWith (absDiffOrder(xs))
