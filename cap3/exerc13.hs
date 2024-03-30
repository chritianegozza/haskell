-- Definição do tipo de dado Metros
data Metros = Metros Int Double | MetragemInvalida deriving Show

-- Função para calcular a área de um quadrado
areaQuadrado :: Metros -> Metros
areaQuadrado (Metros dim valor)
    | dim /= 1 = MetragemInvalida
    | otherwise = Metros dim (valor * valor)
areaQuadrado _ = MetragemInvalida

-- Função para calcular a área de um retângulo
areaRet :: Metros -> Metros -> Metros
areaRet (Metros dim1 valor1) (Metros dim2 valor2)
    | dim1 /= dim2 = MetragemInvalida
    | otherwise = Metros dim1 (valor1 * valor2)
areaRet _ _ = MetragemInvalida

-- Função para calcular a área de um cubo
areaCubo :: Metros -> Metros
areaCubo (Metros dim valor)
    | dim /= 1 = MetragemInvalida
    | otherwise = Metros dim (6 * valor * valor)
areaCubo _ = MetragemInvalida
