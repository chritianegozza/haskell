-- Função para verificar se uma string é um palíndromo
ehPalindromo :: String -> Bool
ehPalindromo str = str == reverse str

-- Exemplo de uso:
-- ehPalindromo "arara" retorna True
-- ehPalindromo "hello" retorna False
