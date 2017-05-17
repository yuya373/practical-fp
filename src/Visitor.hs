data Expr a = Plus (Expr a) (Expr a)
            | Square (Expr a)
            | Number a

evalExpr :: Expr Int -> Int
evalExpr (Plus a b) = evalExpr a + evalExpr b
evalExpr (Square a) = evalExpr a ^ 2
evalExpr (Number a) = a

showExpr :: Expr Int -> String
showExpr (Plus a b) = showExpr a ++ " + "  ++ showExpr b
showExpr (Square a) = "(" ++ showExpr a ++ ")^2"
showExpr (Number a) = show a

main :: IO ()
main = do
  let e = Plus (Number 1) (Square (Plus (Number 2) (Number 3)))
  putStrLn (showExpr e)
  print (evalExpr e)
