-- Definição do tipo de dado Cambio
data Cambio = Euro | Real | Dollar deriving Show

-- Definição do tipo de dado Moeda com record syntax
data Moeda = Moeda {
    val :: Double,
    cur :: Cambio
} deriving Show

-- Função para realizar conversão de câmbio
converterCambio :: Moeda -> Cambio -> Moeda
converterCambio (Moeda valor Euro) Real = Moeda (valor * 6.5) Real
converterCambio (Moeda valor Euro) Dollar = Moeda (valor * 1.2) Dollar
converterCambio (Moeda valor Real) Euro = Moeda (valor * 0.15) Euro
converterCambio (Moeda valor Real) Dollar = Moeda (valor * 0.18) Dollar
converterCambio (Moeda valor Dollar) Euro = Moeda (valor * 0.83) Euro
converterCambio (Moeda valor Dollar) Real = Moeda (valor * 5.5) Real
converterCambio moeda _ = moeda  -- Retorna a moeda original se o tipo de conversão não for suportado

-- Exemplo de uso:
-- Suponha que você tenha 10 Euros e queira converter para Reais:
-- converterCambio (Moeda 10 Euro) Real
