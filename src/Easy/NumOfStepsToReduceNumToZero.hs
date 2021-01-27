module NumOfStepsToReduceNumToZero ( numOfStepsToReduceNumToZero ) where

-- https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/

numOfStepsToReduceNumToZero :: Integer -> Integer
numOfStepsToReduceNumToZero x = numOfStepsToReduceNumToZero' x 0

numOfStepsToReduceNumToZero' :: Integer -> Integer -> Integer
numOfStepsToReduceNumToZero' num count
  | num /= 0 = if even num
    then numOfStepsToReduceNumToZero' (num `div` 2) count + 1 
    else numOfStepsToReduceNumToZero' (num - 1) count + 1
  | otherwise = count
