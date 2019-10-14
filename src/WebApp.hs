module WebApp (app) where

import Web.Scotty

import System.Environment (lookupEnv)

routes = do
  get "/" $ do
    text $ "hello scotty" 

getPort :: IO Int
getPort = do
  envPort <- lookupEnv "PORT"
  return $ read $ maybe "5000" id envPort

app :: IO ()
app = do
  port <- getPort
  scotty port routes
  
