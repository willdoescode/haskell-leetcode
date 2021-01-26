module FizzBuzz ( fizzbuzz ) where
  
fizzbuzz :: [Integer] -> [String]
fizzbuzz = map (\x -> case (x `rem` 5, x `rem` 3) of
                 (0, 0) -> "Fizzbuzz"
                 (0, _) -> "Fizz"
                 (_, 0) -> "Buzz"
                 _ -> show x)