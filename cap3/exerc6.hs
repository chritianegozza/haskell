module Sexto where

-- Definição do novo tipo Mes
data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro deriving (Show, Enum)

-- Definição do novo tipo Estacao
data Estacao = Primavera | Verao | Outono | Inverno deriving (Show)

-- Definição do novo tipo Hemisferio
data Hemisferio = Norte | Sul deriving (Show)

-- Função para verificar o número de dias em um mês
checaFim :: Mes -> Int
checaFim Janeiro = 31
checaFim Fevereiro = 28
checaFim Marco = 31
checaFim Abril = 30
checaFim Maio = 31
checaFim Junho = 30
checaFim Julho = 31
checaFim Agosto = 31
checaFim Setembro = 30
checaFim Outubro = 31
checaFim Novembro = 30
checaFim Dezembro = 31

-- Função para obter o próximo mês
prox :: Mes -> Mes
prox Dezembro = Janeiro
prox mes = succ mes

-- Função para determinar a estação do ano com base no mês e hemisfério
estacao :: Hemisferio -> Mes -> Estacao
estacao Norte mes
    | elem mes [Marco, Abril, Maio] = Primavera
    | elem mes [Junho, Julho, Agosto] = Verao
    | elem mes [Setembro, Outubro, Novembro] = Outono
    | otherwise = Inverno
estacao Sul mes
    | elem mes [Setembro, Outubro, Novembro] = Primavera
    | elem mes [Dezembro, Janeiro, Fevereiro] = Verao
    | elem mes [Marco, Abril, Maio] = Outono
    | otherwise = Inverno
