-- 8.1)	Faça	um	 tipo		Caixa		com	um	type	 parameter 	a		 e	 três construtores	chamados		Um	,		Dois		e		Tres		possuindo	um,	dois	e três	campos	de	tipo		a	,	respectivamente. Faça	uma	instância	de	Functor	para	o	tipo		Caixa	.	A função	deve	ser	aplicada	em	todas	as	coordenadas	dos valores	(	Um	,		Dois		ou		Tres	). Crie	uma	instância	de		Monad		para	o	tipo		Caixa	.	Seu return		deve	ser	o	value	constructor	de		Um	. Observação:	 quando	 definir	 	>>=		 para	 	Caixa	,	 o	 valor	 a entrar	em		f		segue	as	regras: Um	:	 o	 único	 campo	 entra	 na	 função	 (análogo	 ao Maybe	); Dois	:	o	segundo	campo	entra; Tres	:	o	terceiro	campo	entra.


-- Definição do tipo Caixa com um type parameter a
data Caixa a = Um a | Dois a a | Tres a a a deriving Show

-- Instância Functor para Caixa
instance Functor Caixa where
    fmap f (Um a) = Um (f a)
    fmap f (Dois a b) = Dois (f a) (f b)
    fmap f (Tres a b c) = Tres (f a) (f b) (f c)

-- Instância Monad para Caixa
instance Monad Caixa where
    return = Um
    (Um a) >>= f = f a
    (Dois a b) >>= f = case f b of
                            Um x -> Dois a x
                            Dois x y -> Dois a x
                            Tres x y z -> Dois a x
    (Tres a b c) >>= f = case f c of
                            Um x -> Tres a b x
                            Dois x y -> Tres a b x
                            Tres x y z -> Tres a b x

-- Exemplo de uso
main :: IO ()
main = do
    let caixaUm = Um 10
        caixaDois = Dois 20 30
        caixaTres = Tres 40 50 60

    putStrLn "Functor:"
    print $ fmap (*2) caixaUm
    print $ fmap (*2) caixaDois
    print $ fmap (*2) caixaTres

    putStrLn "\nMonad:"
    print $ caixaUm >>= (\x -> Um (x * 2))
    print $ caixaDois >>= (\x -> Um (x * 2))
    print $ caixaTres >>= (\x -> Um (x * 2))
