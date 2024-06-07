-- 9.1)	Faça	um	programa	que	faça	o	usuário	digitar	um	número, e	mostre	na	saída	padrão	se	ele	é	par	ou	ímpar.

-- Função para verificar se um número é par ou ímpar

parOuImpar :: Int -> String
parOuImpar n
    | even n    = "O número digitado é par."
    | otherwise = "O número digitado é ímpar."

main :: IO ()
main = do
    putStrLn "Digite um número:"
    input <- getLine
    let numero = read input :: Int
    putStrLn (parOuImpar numero)
