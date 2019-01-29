module Equation(
  eq
)where
    
eq :: IO()
eq = do
    putStrLn $ concat[  "Решаем квадратное уравнение вида: \n",
                        "   ax^2 + bx + c = 0 \n",
                        "где \n",
                        "   x - неизвестное, \n",
                        "   a, b, c - некоторые числа, a отлично от нуля."]
    putStrLn "Введите a:"
    aa <- getLine
    let a = read aa
    if a == 0 then
        putStrLn "ОШИБКА! В условии сказано, что a отлично от нуля."
    else do
        putStrLn "Введите b:"
        bb <- getLine
        putStrLn "Введите c:"
        cc <- getLine
        let b = read bb
            c = read cc
        root a b c
        
root :: Double -> Double-> Double -> IO ()
root a b c 
    |d >  0 = twoRoots a b d
    |d == 0 = oneRoots a b
    |d <  0 = unRoots 
    where d = b*b-4*a*c
          
twoRoots :: Double-> Double-> Double -> IO ()
twoRoots a b d = do 
    putStrLn .unlines $[
        "Корни уравнения:",
        "x1=" ++ show x1,
        "x2=" ++ show x2
        ]
    where
        x1 =(-b+ sqrt d)/(2*a)
        x2 =(-b- sqrt d)/(2*a)
        
oneRoots :: Double -> Double -> IO ()
oneRoots a b = do 
    putStrLn $ "У этого уравнения повторяющийся корень x=" ++ show (-b/(2*a))
    
unRoots :: IO ()
unRoots = putStrLn "Решений нет"
