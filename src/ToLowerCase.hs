module ToLowerCase ( toLowerCase ) where

-- https://leetcode.com/problems/to-lower-case/

import Data.List

toLowerCase :: String -> String
toLowerCase = map (\c
         -> case elemIndex c upper of
             Just n -> lower !! n
             Nothing -> c)
    
  where lower = ['a'..'z']
        upper = ['A'..'Z']

