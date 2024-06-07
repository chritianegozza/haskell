--8.3)	 Determine	 o	 valor	 das	 expressões	 a	 seguir	 (caso	 seja possível),	sem	usar	o	GHCi:
--	Tres	1	2	3	>>=	mult234	>>=	mult234	
--	Dois	2	4	>>=	mult234	
--	:kind	Coisa	
--	Dois	2	3	>>=	\_	->	Dois	7	7

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
