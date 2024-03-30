-- Definição do tipo de dado Valido
data Valido = Sim String | Nao deriving Show

-- Função para verificar se um nome é válido
isNomeValido :: String -> Valido
isNomeValido nome
    | null nome = Nao
    | otherwise = Sim nome
