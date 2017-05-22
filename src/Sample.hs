-- |

module Sample where

digits :: Int -> Int
digits = length . show

square :: Num a => a -> a
square = (^ 2)

hoge :: Show a => a -> String
hoge = show


ultimate :: Int -> String
ultimate 42 = "人生、宇宙、すべての答え"
ultimate n = show n

maybeToList :: Maybe a -> [a]
maybeToList (Just a) = [a]
maybeToList Nothing = []

listToMaybe :: [a] -> Maybe a
listToMaybe (x : xs) = Just x
listToMaybe [] = Nothing


deeping :: String -> String
deeping s@(' ' : ' ' : _) = "  " ++ s
deeping s@(' ' : _) =  " " ++ s
deeping s = s

nonExhausitive :: Int -> Int
nonExhausitive 0 = 0
nonExhausitive 1 = 1

safeSqrt :: Ord a => Floating a => a -> Maybe a
safeSqrt x
  | x < 0 = Nothing
  | otherwise = Just (sqrt x) -- otherwise がないとワーニング。otherwiseで網羅性を判定。
  -- | True = Just (sqrt x)

caseOfFirstLetter :: String -> String
caseOfFirstLetter "" = "empty"
caseOfFirstLetter (x : xs)
  | x `elem` ['a'..'z'] = "lower"
  | x `elem` ['A'..'Z'] = "upper"
  | otherwise = "other"

