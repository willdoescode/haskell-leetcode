module RunningSum ( runningsum ) where

runningsum :: [Integer] -> [Integer]
runningsum = scanl1 (+)