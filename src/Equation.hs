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
    putStrLn "Введите b:"
    bb <- getLine
    putStrLn "Введите c:"
    cc <- getLine
    let a = read aa
        b = read bb
        c = read cc
        discr = b*b - 4*a*c
        x1 = (-b - sqrt discr)/(2*a)
        x2 = (-b + sqrt discr)/(2*a)
    if x1 == x2 then putStrLn $ "У этого уравнения повторяющийся корень x = " ++ show x1
    else putStrLn $ "Корни уравнения: \n" ++
                    "x1 = " ++ show x1 ++ "\n" ++
                    "x2 = " ++ show x2 ++ "\n"
