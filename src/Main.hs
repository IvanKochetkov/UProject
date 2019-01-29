module Main where

import NODandNOK
import Area
import Volume
import Equation
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    parseArgs args
    
parseArgs :: [String] -> IO()
parseArgs []        = calculating
parseArgs y@(x:_)   = do
    case x of
         "--help"       -> usage
         "--version"    -> version
         _              -> calculating
         
calculating :: IO()
calculating = do
    putStrLn $ concat["Выбери, что нужно посчитать: \n",
                    "   1. НОД и НОК чисел \n",
                    "   2. Площадь геометрической фигуры \n",
                    "   3. Объем \n",
                    "   4. Решение квадратного уравнения \n"]
    y <- getLine
    let n = read $ take 1 y
    case n of
         1 -> nodnok
         2 -> area
         3 -> volume
         4 -> eq
         _ -> putStrLn "ОШИБКА: неверно указан номер действия."

         
usage :: IO()
usage = putStrLn usageStr

usageStr :: String
usageStr =  concat[ "Использование:\n"                                                  ,
                    "   Введите любую строку, кроме \"--help\" и \"--version\", \n"     ,
                    "      или не вводите ничего и калькулятор запустится.\n"           ]


version :: IO()
version = putStrLn versionStr

versionStr :: String
versionStr =    "Math Calc, version 1.1."
