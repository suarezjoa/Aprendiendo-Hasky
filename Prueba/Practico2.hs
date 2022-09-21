{-# OPTIONS_GHC -Wno-deferred-out-of-scope-variables #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Data.Char ( toUpper, toLower )
import Text.Read (Lexeme(String))


mayusculaInicial :: String -> String
mayusculaInicial = unwords . map capitalize . words
    where capitalize (x:xs) = toUpper x : map toLower xs
 
-- (transforma p) es la palabra p con mayúscula inicial si su longitud
-- es mayor o igual que 4 y es p en minúscula en caso contrario
transforma :: String -> String
transforma p | length p >= 4 = mayusculaInicial p
 
-- (minuscula xs) es la palabra xs en minúscula.
minuscula :: String -> String
minuscula xs = [toLower x | x <- xs]

contarPalabras :: Num p => [Char] -> p
contarPalabras ""= 1

contarPalabras (x:xs) = if x==' ' then 1 + contarPalabras xs else contarPalabras xs
