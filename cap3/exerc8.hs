-- Função para eliminar números pares, ímpares múltiplos de 7 e negativos de uma lista
filtrarNumeros :: [Int] -> [Int]
filtrarNumeros = reverse . filter (\x -> odd x && x `mod` 7 /= 0 && x >= 0)

-- Exemplo de uso:
-- filtrarNumeros [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 14, -3, -7] retorna [9, 5, 3, 1]
