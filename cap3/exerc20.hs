-- Função para converter todos os elementos de uma lista de moedas para Real
converterTodosReal :: [Moeda] -> [Moeda]
converterTodosReal moedas = [converterCambio moeda Real | moeda <- moedas]
