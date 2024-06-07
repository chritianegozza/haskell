-- 9.8)	Leia	um	arquivo	que	tenha	o	seguinte	formato:
-- 1	2
-- 2	4
-- 9	7
-- 455	300
-- E	verifique	o	maior	número	de	cada	linha	e,	ao	final,	o	maior número	entre	 todos.	Estes	números	devem	 ser	mostrados	em	um arquivo.

import Data.List (maximum)

-- Função para processar uma linha e retornar o maior número nela
maiorNumeroLinha :: String -> Int
maiorNumeroLinha linha = maximum (map read (words linha))

-- Função para ler um arquivo, processar as linhas e retornar o maior número de cada linha e o maior número global
lerArquivo :: FilePath -> IO (Int, [Int])
lerArquivo arquivo = do
    conteudo <- readFile arquivo
    let linhas = lines conteudo
        maioresLinhas = map maiorNumeroLinha linhas
        maiorGlobal = maximum maioresLinhas
    return (maiorGlobal, maioresLinhas)

-- Função para escrever os resultados em um arquivo
escreverResultado :: FilePath -> (Int, [Int]) -> IO ()
escreverResultado arquivo (maiorGlobal, maioresLinhas) = do
    writeFile arquivo (unlines (map show maioresLinhas ++ ["Maior número global: " ++ show maiorGlobal]))

main :: IO ()
main = do
    let arquivoEntrada = "arquivo.txt"
        arquivoSaida = "resultados.txt"
    (maiorGlobal, maioresLinhas) <- lerArquivo arquivoEntrada
    escreverResultado arquivoSaida (maiorGlobal, maioresLinhas)
    putStrLn "Resultados salvos em 'resultados.txt'"
