-- |

module Main where

import Nginx

main :: IO ()
main = runConf $ do
  http $ do
    server $ do
      listen "*:80"
      location "/" $ do
        index "index.html"
