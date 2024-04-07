-- 5.5	Crie	o	tipo		Paridade		com	os	values	constructors 	Par		e Impar	.	Crie	o	typeclass 	ParImpar		que	contém	a	função		decide ::	a	->	Paridade		e	possui	as	instâncias: Para		Int	:	noção	de	Par/Impar	de		Int	. Para		[a]	:	uma	lista	de	elementos	qualquer	é		Par		se o	número	de	elementos	o	for. Bool	:		False		como		Par	,		True		como		Impar	.

-- Definição do tipo Paridade
data Paridade = Par | Impar deriving (Show)

-- Typeclass ParImpar com função decide
class ParImpar a where
    decide :: a -> Paridade

-- Instância de ParImpar para Int
instance ParImpar Int where
    decide n
        | even n = Par
        | otherwise = Impar

-- Instância de ParImpar para [a]
instance ParImpar [a] where
    decide xs
        | even (length xs) = Par
        | otherwise = Impar

-- Instância de ParImpar para Bool
instance ParImpar Bool where
    decide False = Par
    decide True = Impar
