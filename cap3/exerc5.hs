-- Definição do tipo de dado para as unidades imperiais
data Imperial = Inch | Yard | Foot deriving (Show)

-- Função para converter de unidades imperiais para metros
converterMetros :: Imperial -> Double -> Double
converterMetros Inch valor = valor * 0.0254
converterMetros Yard valor = valor * 0.9144
converterMetros Foot valor = valor * 0.3048

-- Função para converter de metros para unidades imperiais
converterImperial :: Imperial -> Double -> Double
converterImperial Inch valor = valor / 0.0254
converterImperial Yard valor = valor / 0.9144
converterImperial Foot valor = valor / 0.3048

-- Exemplos de uso:
-- converterMetros Inch 10.0 retorna 0.254
-- converterImperial Yard 10.0 retorna 10.936132983377075
