module Area(
  area,
  areaRectangle,
  areaParallelogram,
  areaCircle,
  areaTriangle,
  areaTrapezium,
  areaRhombus
)where
    
area :: IO()
area = do
    putStrLn $  concat[ "Площадь какой геометрической фигуры нужно посчитать? \n",
                        "   1. Прямоугольник \n",
                        "   2. Параллелограмм \n",
                        "   3. Круг \n",
                        "   4. Треугольник \n",
                        "   5. Трапеция \n",
                        "   6. Ромб \n"]
    x <- getLine
    let n = read $ take 1 x
    case n of
         1 -> areaRectangle
         2 -> areaParallelogram
         3 -> areaCircle
         4 -> areaTriangle
         5 -> areaTrapezium
         6 -> areaRhombus
                        
                        
areaRectangle :: IO()
areaRectangle = do
    putStrLn $  "Введите две стороны прямоугольника(перпендикулярные). \n" ++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    bb <- getLine
    let a = read aa
        b = read bb
    let ar = a*b
    putStrLn $  "Площадь прямоугольника S = " ++ show ar
    
    
areaParallelogram :: IO()
areaParallelogram = do
    putStrLn $  "Введите сторону, затем высоту, проведенную к ней. \n" ++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    hh <- getLine
    let a = read aa
        h = read hh
    let ar = a*h
    putStrLn $  "Площадь параллелограмма S = " ++ show ar
    
    
areaCircle :: IO()
areaCircle = do
    putStrLn $  "Введите радиус круга."
    aa <- getLine
    let a = read aa
    let ar = 2*pi*a
    putStrLn $  "Площадь круга S = " ++ show ar
    
    
areaTriangle :: IO()
areaTriangle = do
    putStrLn $  "Введите сторону, затем высоту, проведенную к ней. \n" ++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    hh <- getLine
    let a = read aa
        h = read hh
    let ar = 0.5*a*h
    putStrLn $  "Площадь треугольника S = " ++ show ar
    
    
areaTrapezium :: IO()
areaTrapezium = do
    putStrLn $  "Введите основания трапеции, затем высоту. \n" ++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    bb <- getLine
    hh <- getLine
    let a = read aa
        b = read bb
        h = read hh
    let ar = 0.5*(a+b)*h
    putStrLn $  "Площадь трапеции S = " ++ show ar
    
    
areaRhombus :: IO()
areaRhombus = do
    putStrLn $  "Введите сторону ромба, затем высоту, проведенную к ней. \n" ++
                "ВНИМАНИЕ! Числа нужно вводить каждое на новой строке!"
    aa <- getLine
    hh <- getLine
    let a = read aa
        h = read hh
    let ar = a*h
    putStrLn $  "Площадь ромба S = " ++ show ar