module WebApp (app) where

import Web.Scotty

routes = do
  get "/" $ do
    text $ "hello scotty" 

app :: IO ()
app = do
  scotty 5000 routes
  
