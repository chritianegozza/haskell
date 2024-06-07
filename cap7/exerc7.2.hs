--7.2)	Aproveitando	 o	 exercício	anterior,	faça	 uma	instância	 de Applicative	Functor		para	o	tipo		Coisa	.

-- Instância de Applicative Functor para Coisa
instance Applicative Coisa where
    pure x = UmaCoisa x
    ZeroCoisa <*> _ = ZeroCoisa
    _ <*> ZeroCoisa = ZeroCoisa
    (UmaCoisa f) <*> coisa = fmap f coisa
    (DuasCoisas f g) <*> (DuasCoisas x y) = DuasCoisas (f x) (g y)
    (TresCoisas f g h) <*> (TresCoisas x y z) = TresCoisas (f x) (g y) (h z)
    _ <*> _ = ZeroCoisa
