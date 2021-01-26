module Main where

import FizzBuzz
import TwoSum
import RunningSum
import SmallerNumbersThanCurrent

main :: IO ()
main = do
  putStrLn "<-- FizzBuzz -->"
  print $ fizzbuzz [1..100]
  putStrLn "<-- TwoSum -->"
  print $ twosum [4, 5, 2, 5] 7
  putStrLn "<-- Running Sum -->"
  print $ runningsum [1, 1, 1, 1, 1]
  print $ runningsum [1,2,3,4]
  putStrLn "<-- Smaller Numbers Than Current -->"
  print $ smallerNumbersThanCurrent [8, 1, 2, 2, 3]
