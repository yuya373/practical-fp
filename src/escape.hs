import HTMLEscapedString


main :: IO ()
main = do
  rawString <- getLine
  -- let str = HTMLEscapedString "str" Error
  putHTMLEscapedStrLn (escape rawString)
