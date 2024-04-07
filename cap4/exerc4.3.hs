-- 4.3 Implemente	 uma	 função	 que	 filtre	 os	 números	 pares	 e outra	que	filtre	os	ímpares	de	uma	lista	recebida	via	parâmetro.

-- Função para filtrar números pares de uma lista
filtrarPares :: [Int] -> [Int]
filterPares lista = filter even lista

-- Função para filtrar números ímpares de uma lista
filtrarImpares :: [Int] -> [Int]
filtrarImpares lista = filter odd lista
