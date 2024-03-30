-- Função para retornar as n primeiras letras em ordem reversa e o restante em sua ordem normal
revNum :: Int -> String -> String
revNum n str = reverse (take n str) ++ drop n str

-- Exemplo de uso:
-- revNum 4 "FATEC" retorna "ETAFC"
