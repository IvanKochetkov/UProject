module Volume(
  volume,
  volumeParallelepiped,
  volumeCylinder,
  volumeCone,
  volumeBall
)where
    
volume :: IO()
volume = do
    putStrLn $  concat[ "Объем какого тела нужно посчитать? \n",
                        "   1. Параллелепипед (прямоугольный) \n",
                        "   2. Цилиндр \n",
                        "   3. Конус \n",
                        "   4. Шар \n"]
    x <- getLine
    let n = read $ take 1 x
    case n of
         1 -> volumeParallelepiped
         2 -> volumeCylinder
         3 -> volumeCone
         4 -> volumeBall
                        
                        
volumeParallelepiped :: IO()
volumeParallelepiped = do
    putStrLn $  "Введите три стороны параллелепипеда(попарно перпендикулярные). \n" ++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    bb <- getLine
    cc <- getLine
    let a = read aa
        b = read bb
        c = read cc
    let vol = a*b*c
    putStrLn $  "Объем параллелепипеда V = " ++ show vol
    
    
volumeCylinder :: IO()
volumeCylinder = do
    putStrLn $  "Введите радиус основания, затем высоту.\n"++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    hh <- getLine
    let a = read aa
        h = read hh
    let vol = pi*a*a*h
    putStrLn $  "Объем цилиндра V = " ++ show vol
    
    
volumeCone :: IO()
volumeCone = do
    putStrLn $  "Введите радиус основания, затем высоту.\n"++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    hh <- getLine
    let a = read aa
        h = read hh
    let vol = pi*a*a*h/3
    putStrLn $  "Объем конуса V = " ++ show vol
    
    
volumeBall :: IO()
volumeBall = do
    putStrLn $  "Введите радиус шара."
    aa <- getLine
    let a = read aa
    let vol = 4*pi*a*a*a/3
    putStrLn $  "Объем шара V = " ++ show vol
