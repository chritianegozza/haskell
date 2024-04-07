--5.8  Usando	 o	 exercício	 anterior,	 some	 5	 a	 cada	 elemento	 de uma	árvore	de	inteiros.
-- Função para somar 5 a cada elemento de uma árvore de inteiros
somar5 :: Arvore Int -> Arvore Int
somar5 = mapa (+5)
