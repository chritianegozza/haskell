--7.3)	Crie	a	função		mult234	 ::	 Double	 ->	 Coisa	 Double	 que	multiplica	por	2	a	primeira	coordenada,	por	3	a	segunda,	e	por 4	 a	 terceira.	 Use a	instância	 de	 	Applicative		feita	 no	 exercício anterior

-- Função mult234 para Coisa
mult234 :: Double -> Coisa Double
mult234 x = (*) <$> UmaCoisa 2 <*> pure x
              <*> (*) <$> UmaCoisa 3 <*> pure x
              <*> (*) <$> UmaCoisa 4 <*> pure x
