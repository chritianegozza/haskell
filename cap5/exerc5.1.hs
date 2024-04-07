-- 5.1 Crie	 o	 tipo	 	 TipoProduto	 	 que	 possui	 os	 values constructors 	Escritorio	,	 	Informatica	,	 	Livro	,	 	Filme		 e Total	.	 O	 tipo	 	Produto		 possui	 um	 value	 constructor	 -	 de mesmo	 nome	 -	 e	 os	 campos	 	 valor	 	 (	 Double	 ),	 	 tp	 (	TipoProduto	)	e	um	value	constructor		Nada	,	que	representa	a ausência	de	um		Produto	. Deseja-se	calcular	o	valor	total	de	uma	compra,	de	modo	a	não ter	nenhuma	conversão	para	inteiro	e	de	forma	combinável.	Crie uma	instância	de	monoide	para		Produto	,	de	modo	que	o	retorno sempre	tenha		Total		no	campo		tp		e	a	soma	dos	dois	produtos em	 	 valor	 .	 Explique	 como	 seria	 o	 exercício	 sem	 o	 uso	 de monoides.	Qual(is)	seria(m)	a(s)	diferença(s)?

-- Definição do tipo TipoProduto
data TipoProduto = Escritorio | Informatica | Livro | Filme | Total deriving (Show, Eq)

-- Definição do tipo Produto
data Produto = Produto { valor :: Double, tp :: TipoProduto } | Nada deriving (Show, Eq)

-- Instância de monoide para Produto
instance Monoid Produto where
    mempty = Produto { valor = 0.0, tp = Total }
    mappend Nada p = p
    mappend p Nada = p
    mappend (Produto v1 tp1) (Produto v2 tp2) = Produto { valor = v1 + v2, tp = Total }