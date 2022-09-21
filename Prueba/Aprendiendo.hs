{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}



suma :: Num p => [p] -> p
suma [] = 0
suma (x:xs) = x + suma xs


lucky :: (Integral a) => a -> String
lucky 7 = "El siete de la suerte"
lucky x = "Lo siento, no es tu dia de suerte!"
