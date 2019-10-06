module LibSpec (spec) where

import Test.Hspec
import Test.QuickCheck
import Lib

spec :: Spec
spec = do
  describe "fib :: Int -> Int" $ do
    context "fib 0" $ do
      it "should be 0" $ do
        fib 0 `shouldBe` 0

    context "fib 1" $ do
      it "should be １" $ do
        fib 1 `shouldBe` 1

    context "fib 2" $ do
      it "should be 1" $ do
        fib 2 `shouldBe` 1

    context "fib x | 3 <= x <= 100" $ do
      it "should be (fib x-1) (fib x-2)" $ property $
        forAll (choose (3, 100)) $
          \x -> fib x `shouldBe` (fib $ x-1) + (fib $ x-2)
    
