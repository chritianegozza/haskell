-- Função para encontrar o valor máximo absoluto entre os campos 'val' de uma lista de moedas
maxMoeda :: [Moeda] -> Double
maxMoeda moedas = maximum [abs (val moeda) | moeda <- moedas]

-- Exemplo de uso:
-- maxMoeda [Moeda 3 Real, Moeda 7 Dollar, Moeda 1 Euro] retorna 7
