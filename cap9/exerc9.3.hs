--9.3)	Baseando-se	no	exemplo	5,	faça	um	jogo	de	Pedra,	Papel	e Tesoura.


import System.Random (randomRIO)

data Escolha = Pedra | Papel | Tesoura deriving (Show, Eq)

-- Função para obter a escolha do usuário
obterEscolha :: IO Escolha
obterEscolha = do
    putStrLn "Escolha Pedra, Papel ou Tesoura:"
    input <- getLine
    case input of
        "Pedra"   -> return Pedra
        "Papel"   -> return Papel
        "Tesoura" -> return Tesoura
        _         -> do
            putStrLn "Escolha inválida. Tente novamente."
            obterEscolha

-- Função para gerar uma escolha aleatória para o computador
escolhaAleatoria :: IO Escolha
escolhaAleatoria = do
    numero <- randomRIO (0, 2) :: IO Int
    case numero of
        0 -> return Pedra
        1 -> return Papel
        2 -> return Tesoura
        _ -> error "Algo deu errado!"

-- Função para determinar o vencedor
determinarVencedor :: Escolha -> Escolha -> String
determinarVencedor jogador computador
    | jogador == computador = "Empate!"
    | (jogador, computador) `elem` [(Pedra, Tesoura), (Papel, Pedra), (Tesoura, Papel)] = "Você venceu!"
    | otherwise = "Você perdeu!"

-- Função principal
main :: IO ()
main = do
    putStrLn "Bem-vindo ao Jogo Pedra, Papel e Tesoura!"
    jogador <- obterEscolha
    computador <- escolhaAleatoria
    putStrLn ("Você escolheu: " ++ show jogador)
    putStrLn ("O computador escolheu: " ++ show computador)
    putStrLn (determinarVencedor jogador computador)
