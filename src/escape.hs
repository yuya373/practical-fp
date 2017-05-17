import HTMLEscapedString


main :: IO ()
main = do
  rawString <- getLine
  putHTMLEscapedStrLn (escape rawString)
