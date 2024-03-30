-- Definição do tipo de dado Medida com record syntax
data Medida = Medida {
    metros :: Double,
    polegadas :: Double,
    jardas :: Double,
    pes :: Double
} deriving (Show)

-- Função para converter metros para unidades imperiais
converterParaImperial :: Double -> Medida
converterParaImperial m = Medida {
    metros = m,
    polegadas = m * 39.3701,
    jardas = m * 1.09361,
    pes = m * 3.28084
}

-- Função para converter unidades imperiais para metros
converterParaMetros :: Medida -> Double
converterParaMetros (Medida m _ _ _) = m

-- Exemplo de uso:
-- converterParaImperial 1.0 retorna Medida {metros = 1.0, polegadas = 39.3701, jardas = 1.09361, pes = 3.28084}
-- converterParaMetros (Medida 1.0 39.3701 1.09361 3.28084) retorna 1.0
