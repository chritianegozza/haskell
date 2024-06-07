-- 9.2)	 Faça	 um	 programa	 que	 mostre	 uma	 palavra	 em	 ordem reversa	a	partir	de	uma	digitada pelo	usuário.

main :: IO ()
main = do
    putStrLn "Digite uma palavra:"
    palavra <- getLine
    let palavraReversa = reverse palavra
    putStrLn ("A palavra ao contrário é: " ++ palavraReversa)
