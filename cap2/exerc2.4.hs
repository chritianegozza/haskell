-- Função para obter o tamanho de cada String e filtrar as palavras de tamanho par
tamanhoStringsImpares :: [String] -> [Int]
tamanhoStringsImpares strs = [length s | s <- strs, odd (length s)]
