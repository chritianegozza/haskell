--8.4)	 Faça	 um	 exemplo,	 usando	 a	 notação		do	,	 de	 um	 trecho qualquer	de	código	usando	sua		Monad	Caixa	.

-- Definição do tipo Caixa com um type parameter a
data Caixa a = Um a | Dois a a | Tres a a a deriving Show

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

-- Função para simular uma computação assíncrona que retorna o dobro do número fornecido
computacaoAssincrona :: Int -> Caixa Int
computacaoAssincrona x = return (x * 2)

-- Função para receber um número do usuário e colocá-lo em uma Caixa
obterNumeroDoUsuario :: IO (Caixa Int)
obterNumeroDoUsuario = do
    putStrLn "Digite um número:"
    numero <- readLn
    return (Um numero)

-- Função para multiplicar dois números dentro de uma Caixa usando a notação do
multiplicarNumeros :: Caixa Int -> Caixa Int -> Caixa Int
multiplicarNumeros caixa1 caixa2 = do
    numero1 <- caixa1
    numero2 <- caixa2
    return (numero1 * numero2)

-- Teste
main :: IO ()
main = do
    resultadoAssincrono <- computacaoAssincrona 5
    numeroUsuario <- obterNumeroDoUsuario
    let resultadoFinal = multiplicarNumeros (Um resultadoAssincrono) numeroUsuario
    putStrLn "Resultado Final:"
    print resultadoFinal
