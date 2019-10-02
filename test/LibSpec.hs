module LibSpec (spec) where

import Test.Hspec
import Lib

spec :: Spec
spec = do
  describe "#fib" $ do
    context "fib 0" $ do
      it "should be 0" $ do
        fib 0 `shouldBe` 0
    context "fib 1" $ do
      it "should be １" $ do
        fib 1 `shouldBe` 1
    context "fib 2" $ do
      it "should be 1" $ do
        fib 2 `shouldBe` (fib 1 + fib 0)
    
