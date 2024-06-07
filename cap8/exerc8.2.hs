--8.2)	 Crie	 uma	 função	 	 mult234	 ::	 Double	 ->	 Caixa Double		 que	 receba	 uma	 parâmetro	 x	 e	 devolva	 o	 dobro	 de	 x	na primeira	coordenada,	o	triplo	na	segunda	e	o	quádruplo	na	terceira usando	o	operador		>>=	.

mult234 :: Double -> Caixa Double
mult234 x = Um x >>= \a ->
            Dois (a * 2) (a * 3) >>= \b ->
            Tres (a * 2) (a * 3) (a * 4)

-- Teste
main :: IO ()
main = do
    let resultado = mult234 5
    putStrLn "Resultado da função mult234:"
    print resultado
