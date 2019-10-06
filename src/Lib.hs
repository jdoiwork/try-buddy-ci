module Lib
    ( fib
    ) where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = go n 1 0
  where
    go 0 a b = b
    go x a b = go (x-1) (a+b) a

