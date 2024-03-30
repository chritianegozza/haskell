-- Definição do tipo de dado Cripto
data Cripto = Mensagem String | Cifrado String | Erro deriving Show

-- Função para encriptar uma mensagem
encriptar :: Cripto -> Cripto
encriptar (Mensagem msg) = Cifrado [succ c | c <- msg]
encriptar _ = Erro

-- Função para decriptar uma mensagem cifrada
decriptar :: Cripto -> Cripto
decriptar (Cifrado cifrado) = Mensagem [pred c | c <- cifrado]
decriptar _ = Erro

-- Exemplos de uso:
-- encriptar (Mensagem "FATEC") retorna Cifrado "GBUFD"
-- decriptar (Cifrado "DBTB") retorna Mensagem "CASA"

