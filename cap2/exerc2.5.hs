-- Definição de head como composição de duas funções
head' :: [a] -> a
head' = head . take 1
