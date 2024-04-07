-- 5.3 A	 função	 	min		 no	 Haskell	 retorna	 o	 menor	 entre	 dois números,	por	exemplo,		min	4	5	=	4	. Crie	um	 tipo		Min		 com	 um	 campo	inteiro,	 que	 seja instância	de		Ord	,		Eq		e		Show		(deriving). Crie	 uma	 instância	 de	 	 Monoid	 	 para	 	 Min	 (	maxBound		 representa	 o	 maior	 inteiro	 existente	 no Haskell). Quanto	vale	a	expressão		Min	 (-32)	 <>	 Min	 (-34) <>	Min	(-33)	? Explique	sua	escolha	para	o		mempty	

-- Definição do tipo Min
newtype Min = Min Int deriving (Show, Eq, Ord)

-- Instância de Monoid para Min
instance Monoid Min where
    mempty = Min maxBound
    mappend (Min x) (Min y) = Min (min x y)
