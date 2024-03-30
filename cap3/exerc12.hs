-- Definição do tipo de dado Binario
data Binario = Zero | Um deriving (Show, Eq)

-- Função para converter Binario para Int
converterParaInt :: Binario -> Int
converterParaInt Zero = 0
converterParaInt Um = 1

-- Função para somar Um a cada elemento da lista e convertê-los para Int
binList :: [Binario] -> [Int]
binList bs = [converterParaInt b + 1 | b <- bs]

-- Exemplo de uso:
-- binList [Um, Zero, Zero, Um, Zero] retorna [0, 1, 1, 0, 1]
