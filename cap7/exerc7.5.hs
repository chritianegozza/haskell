--7.5)	 Escreva	 uma	 instância	 de	 	Functor		 para	 o	 tipo	 	data Fantasma	a	=	Fantasma	.

-- Definição do tipo Fantasma
data Fantasma a = Fantasma

-- Instância de Functor para Fantasma
instance Functor Fantasma where
    fmap f Fantasma = Fantasma
