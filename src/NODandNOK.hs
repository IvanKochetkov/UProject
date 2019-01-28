module NODandNOK(
  nodnok,
  nod,
  nok
)where
    
nodnok :: IO()
nodnok = do
    putStrLn $  concat[ "Введите 2 числа, для которых нужно посчитать наибольший общий делитель\n",
                        "и наименьшее общее кратное.\n",
                        "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"]
    aa <- getLine
    let a = read aa
    bb <- getLine
    let b = read bb
    noDab  <- nod a b
    noKab <- nok a b noDab
    putStrLn $  "НОД чисел " ++ aa ++ " и " ++ bb ++ " равен " ++ show noDab ++ "\n" ++
                "НОК чисел " ++ aa ++ " и " ++ bb ++ " равен " ++ show noKab 
    
    
nod :: Int -> Int -> IO Int
nod a b = do
    if a == b then do
        return a
    else do
        if a < b then do
            nod a $ b-a
        else do
            nod b $ a-b
            
            
nok :: Int -> Int -> Int -> IO Int
nok a b nodab = do
    let nokab = (a*b) `div` nodab
    return nokab
