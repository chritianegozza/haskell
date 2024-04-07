-- 4.8 Implemente	 o	 tipo	 	Dinheiro		 que	 contenha	 os	 campos valor		 e	 	correncia		 (	Real		 ou	 	Dolar	),	 e	 uma	função	 que converta	todos	os	"dinheiros"	de	uma	lista	para	dólar	(e	outra	para real).	Com	isso,	implemente	funções	para: Filtrar	todos	os		Dolares		de	uma	lista	de		Dinheiro	. Somar	todos	os		Dolares		de	uma	lista. Contar	a	quantidade	de		Dolares		de	uma	lista.


-- Definindo o tipo Dinheiro
data Moeda = Real | Dolar deriving (Show, Eq)

data Dinheiro = Dinheiro { valor :: Float, moeda :: Moeda } deriving (Show, Eq)

-- Função para converter Dinheiro para Dólar
paraDolar :: Dinheiro -> Dinheiro
paraDolar (Dinheiro v Real) = Dinheiro (v / 5.0) Dolar
paraDolar d = d

-- Função para converter Dinheiro para Real
paraReal :: Dinheiro -> Dinheiro
paraReal (Dinheiro v Dolar) = Dinheiro (v * 5.0) Real
paraReal d = d

-- Função para filtrar todos os Dólares de uma lista de Dinheiro
filtrarDolares :: [Dinheiro] -> [Dinheiro]
filtrarDolares dinheiro = filter (\x -> moeda x == Dolar) dinheiro

-- Função para somar todos os Dólares de uma lista de Dinheiro
somarDolares :: [Dinheiro] -> Float
somarDolares dinheiro = sum [v | Dinheiro v Dolar <- dinheiro]

-- Função para contar a quantidade de Dólares em uma lista de Dinheiro
contarDolares :: [Dinheiro] -> Int
contarDolares dinheiro = length [d | d <- dinheiro, moeda d == Dolar]
