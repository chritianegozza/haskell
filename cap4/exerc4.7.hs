-- 4.7 Crie	um	tipo		Dia		contendo	os	dias	da	semana.	Faça	uma função	que	receba	uma	lista	de		Dias		e	filtre	as		Terças	.
 
 -- Definindo o tipo Dia
data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Show, Eq)

-- Função para filtrar as Terças de uma lista de Dias
filtrarTerca :: [Dia] -> [Dia]
filtrarTerca dias = filter (== Terca) dias
