module Lib
    ( fib
    ) where

fib :: Int -> Int
fib n = go n 1 0
  where
    go x a b | x < 0 = undefined
    go 0 a b = b
    go x a b = go (x-1) (a+b) a
