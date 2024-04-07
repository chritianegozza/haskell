-- 4.6 Faça	uma	função	func	que	receba	uma	função		f		de	tipo (String	->	String)	,	e	uma		String	s		que	 retorna	o	 reverso de		s		concatenado	com	aplicação	da	função		f		em		s	.


-- Função para inverter uma string
inverter :: String -> String
inverter str = reverse str

-- Função func que recebe uma função f e uma string s e retorna o reverso de s concatenado com a aplicação da função f em s
func :: (String -> String) -> String -> String
func f s = inverter s ++ f s


-- Teste da função func
main = do
    let f = (\x -> x ++ " mundo!")  -- Definindo uma função f
    let s = "Olá"                   -- Definindo uma string s
    print (func f s)                -- Chamando a função func com f e s

