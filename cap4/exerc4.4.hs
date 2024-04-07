-- 4.4 Filtre	 os	 números	 primos	 de	 uma	 lista	 recebida	 porparâmetro.
ehPrimo :: Int -> Bool
ehPrimo n
    | n <= 1 = False
    | otherwise = all (\x -> n `mod` x /= 0) [2..(floor (sqrt (fromIntegral n)))]

-- Função para filtrar números primos de uma lista
filtrarPrimos :: [Int] -> [Int]
filtrarPrimos lista = filter ehPrimo lista