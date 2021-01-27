module RunningSum ( runningsum ) where

-- https://leetcode.com/problems/running-sum-of-1d-array/

runningsum :: [Integer] -> [Integer]
runningsum = scanl1 (+)
