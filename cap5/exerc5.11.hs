--5.11 Implemente	 os	 percursos	 pós-ordem	 e	 pré-ordem.	 Via
comentário,	 faça	 os	 "testes	 de	 mesa"	 para	 os	 dois	 percursos	 da
árvore		Raiz	 15	 (Raiz	 11	 (Folha	 6)	 (Raiz	 12	 (Folha	 10)
Nula))	(Raiz	20	Nula	(Raiz	22	(Folha	21)	Nula))	.

-- Definição da estrutura de árvore binária
data Arvore a = Folha a | No a (Arvore a) (Arvore a) | Nula deriving (Show)

-- Percorrendo a árvore em pré-ordem
preOrdem :: Arvore a -> [a]
preOrdem Nula = []
preOrdem (Folha x) = [x]
preOrdem (No x esq dir) = [x] ++ preOrdem esq ++ preOrdem dir

-- Percorrendo a árvore em pós-ordem
posOrdem :: Arvore a -> [a]
posOrdem Nula = []
posOrdem (Folha x) = [x]
posOrdem (No x esq dir) = posOrdem esq ++ posOrdem dir ++ [x]
