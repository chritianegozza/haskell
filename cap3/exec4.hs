-- Função para verificar se um caractere é uma vogal
ehVogal :: Char -> Bool
ehVogal c = c `elem` "aeiouAEIOU"

-- Função para remover todas as vogais maiúsculas e minúsculas de uma string
removerVogais :: String -> String
removerVogais str = [c | c <- str, not (ehVogal c)]

-- Exemplo de uso:
-- removerVogais "Olá Mundo" retorna "l Mnd"
