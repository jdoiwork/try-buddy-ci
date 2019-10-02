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
      it "should be 0" $ do
        fib 1 `shouldBe` 1

