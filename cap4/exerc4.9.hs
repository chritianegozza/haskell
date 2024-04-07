-- 4.9	Usando	a	função		foldl	,	crie	lambdas	para: Contar	números	negativos	de	uma	lista	de		Int	. Contar	letras	'P'	de	uma		String	. Para	 contar	 	 Sabados	 	 em	 uma	 lista	 de	 um [DiaSemana]	.
 -- Contar números negativos de uma lista de Int
contarNegativos :: [Int] -> Int
contarNegativos = foldl (\acc x -> if x < 0 then acc + 1 else acc) 0

-- Contar letras 'P' de uma String
contarLetrasP :: String -> Int
contarLetrasP = foldl (\acc x -> if x == 'P' then acc + 1 else acc) 0

-- Definição do tipo DiaSemana
data DiaSemana = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Show, Eq)

-- Contar Sabados em uma lista de [DiaSemana]
contarSabados :: [DiaSemana] -> Int
contarSabados = foldl (\acc x -> if x == Sabado then acc + 1 else acc) 0

-- Converter DiaSemana para Int
converterParaInt :: DiaSemana -> Int
converterParaInt Domingo = 1
converterParaInt Segunda = 2
converterParaInt Terca = 3
converterParaInt Quarta = 4
converterParaInt Quinta = 5
converterParaInt Sexta = 6
converterParaInt Sabado = 7

-- Retornar a soma dos dias (convertidos para Int) em uma lista de [DiaSemana]
somaDias :: [DiaSemana] -> Int
somaDias = foldl (\acc x -> acc + converterParaInt x) 0
