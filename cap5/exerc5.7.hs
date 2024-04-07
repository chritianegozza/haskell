-- 5.7	Usando	a	estrutura	de	árvore,	monte	uma	função		mapa	, que	 jogue	 uma	 função	 passada	 por	 parâmetro	 para	 todos	 os elementos	de	uma	árvore.	Deixe	explícito	o	tipo	desta	função

-- Definição da estrutura de árvore binária
data Arvore a = No a (Arvore a) (Arvore a) | Vazia deriving (Show)

-- Função mapa que aplica uma função para todos os elementos de uma árvore
mapa :: (a -> b) -> Arvore a -> Arvore b
mapa _ Vazia = Vazia
mapa f (No x esq dir) = No (f x) (mapa f esq) (mapa f dir)
