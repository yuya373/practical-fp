-- [lnzntのHaskell日記 - haskell](https://haskell.g.hatena.ne.jp/lnznt/)
-- 値コンストラクタをエクスポートしない, escapeを使うことを強制する。パターンマッチを防ぐ。
module HTMLEscapedString
  ( HTMLEscapedString
  , escape
  , putHTMLEscapedStrLn
  ) where

data HTMLEscapedString = HTMLEscapedString String

escape :: String -> HTMLEscapedString
escape str = HTMLEscapedString (str >>= escapeAmp >>= escapeOther) where
  escapeAmp '&' =  "&amp;"
  escapeAmp c = [c]
  escapeOther '<' = "&lt;"
  escapeOther '>' = "&gt;"
  escapeOther '"' = "&quot;"
  escapeOther c = [c]

putHTMLEscapedStrLn :: HTMLEscapedString -> IO ()
putHTMLEscapedStrLn (HTMLEscapedString str) = putStrLn str
