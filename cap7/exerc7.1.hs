--7.1)	 Faça	 uma	 instância	 de	 	Functor		 para	 o	 tipo	 	Coisa	, definido	no	início	do	capítulo	5.	A	função		g		deve	"ir	para	dentro" em	 todas	as	coordenadas	de		Coisa	.	No	 caso	 de		ZeroCoisa	,	 o fmap		deve	retornar		ZeroCoisa	.

-- Definição do tipo Coisa
data Coisa a = ZeroCoisa | UmaCoisa a | DuasCoisas a a | TresCoisas a a a deriving (Show)

-- Instância de Functor para Coisa
instance Functor Coisa where
    fmap f ZeroCoisa = ZeroCoisa
    fmap f (UmaCoisa a) = UmaCoisa (f a)
    fmap f (DuasCoisas a b) = DuasCoisas (f a) (f b)
    fmap f (TresCoisas a b c) = TresCoisas (f a) (f b) (f c)
