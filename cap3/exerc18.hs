-- Função para encriptar todos os elementos de um vetor de Cripto
encriptarTodos :: [Cripto] -> [Cripto]
encriptarTodos criptos = [encriptar c | c <- criptos]
