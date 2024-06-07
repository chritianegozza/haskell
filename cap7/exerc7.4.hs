--7.4)	 Escreva	 uma	 instância	 para	 	Functor		 e	 	Applicative	 para	o	tipo	Arvore	,	visto	no	capítulo	5.

-- Definição do tipo Árvore
data Arvore a = No a (Arvore a) (Arvore a) | Folha deriving (Show)

-- Instância de Functor para Árvore
instance Functor Arvore where
    fmap f Folha = Folha
    fmap f (No a esq dir) = No (f a) (fmap f esq) (fmap f dir)

-- Instância de Applicative Functor para Árvore
instance Applicative Arvore where
    pure x = No x Folha Folha
    Folha <*> _ = Folha
    _ <*> Folha = Folha
    (No f esq1 dir1) <*> (No x esq2 dir2) = No (f x) (esq1 <*> esq2) (dir1 <*> dir2)
