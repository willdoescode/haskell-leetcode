module TargetArrayInGivenOrder ( targetArrayInGivenOrder ) where

-- https://leetcode.com/problems/create-target-array-in-the-given-order/submissions/

targetArrayInGivenOrder :: [Int] -> [Int] -> [Int]
targetArrayInGivenOrder nums index = targetArrayInGivenOrder' l []
  where l = zip nums index

targetArrayInGivenOrder' :: [(Int, Int)] -> [Int] -> [Int]
targetArrayInGivenOrder' (h:t) l =
  targetArrayInGivenOrder' t (let (ys, xs) = splitAt (snd h) l in ys ++ [fst h] ++ xs)

targetArrayInGivenOrder' [] x = x