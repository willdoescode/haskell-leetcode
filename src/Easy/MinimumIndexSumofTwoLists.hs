module MinimumIndexSumofTwoLists ( minimumIndexSumofTwoLists ) where

-- https://leetcode.com/problems/minimum-index-sum-of-two-lists/
  
import Data.List

minimumIndexSumofTwoLists :: [String] -> [String] -> [String]
minimumIndexSumofTwoLists f s = filter (\n -> n /= "") (map (\x -> do
                                      case elemIndex x s of
                                        Just n -> s !! n
                                        Nothing -> []
                                    ) f)