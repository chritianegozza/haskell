-- Definição do tipo de dado Numero
data Numero = Ok Double | Erro String deriving Show

-- Função para dividir dois números
dividir :: Numero -> Numero -> Numero
dividir (Ok _) (Ok 0) = Erro "Erro: Divisão por zero"
dividir (Ok x) (Ok y) = Ok (x / y)
dividir _ _ = Erro "Erro: Entrada inválida"

-- Exemplo de uso:
-- dividir (Ok 6) (Ok 5) retorna Ok 1.2
-- dividir (Ok 6) (Ok 0) retorna Erro "Erro: Divisão por zero"
-- dividir (Erro "Número inválido") (Ok 5) retorna Erro "Erro: Entrada inválida"
