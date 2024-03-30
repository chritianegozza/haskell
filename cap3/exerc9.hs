-- Função para inverter uma string
inverterString :: String -> String
inverterString = reverse

-- Função para inverter as três strings e retornar uma tupla
inverterTupla :: String -> String -> String -> (String, String, String)
inverterTupla x y z = (inverterString x, inverterString y, inverterString z)

-- Exemplo de uso:
-- inverterTupla "abc" "def" "ghi" retorna ("cba", "fed", "ihg")
