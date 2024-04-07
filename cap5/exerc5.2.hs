-- 5.2	Crie	 uma	função	 	totalGeral		 que	 recebe	 uma	 lista	 de produtos	e	retorna	o	preço	total	deles	usando	o	monoide	anterior.

-- Função para calcular o preço total de uma lista de produtos usando o monoide Produto
totalGeral :: [Produto] -> Double
totalGeral = valor . mconcat
