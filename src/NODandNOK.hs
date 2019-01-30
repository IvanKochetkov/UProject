module NODandNOK(
    nodnok,
    nod,
    nok
) where 

nodnok :: IO ()
nodnok = do 
    putStrLn $  concat[ "Введите 2 числа, для которых нужно посчитать НОД\n",
                        "и НОК.\n",
                        "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"]
    aa <- getLine
    let a = read aa
    bb <- getLine
    let b = read bb
    noDab  <- nod a b
    noKab <- nok a b noDab
    putStrLn $  "НОД (" ++ aa ++ "," ++ bb ++ ")=" ++ show noDab ++ "\n"++
                "НОК [" ++ aa ++ "," ++ bb ++ "]=" ++ show noKab 


nod :: Int -> Int -> IO Int 
nod a b = do
    if b == 0 then
        return a
    else do
        if (a `mod` b == 0) then 
            return b
        else do
            let c = a `mod` b
            if c `mod` b == 1 then
                return 1
            else do
                nod b $ c `mod` b
            
            
nok :: Int -> Int -> Int -> IO Int
nok a b nodab = do
    let nokab = (a*b) `div` nodab
    return nokab
