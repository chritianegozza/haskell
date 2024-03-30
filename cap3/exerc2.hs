-- Definição do tipo de dado Temperatura
data Temperatura = Celsius | Fahrenheit | Kelvin deriving (Show)

-- Função para converter para Celsius
converterCelsius :: Double -> Temperatura -> Double
converterCelsius valor Celsius = valor
converterCelsius valor Fahrenheit = (valor - 32) * 5 / 9
converterCelsius valor Kelvin = valor - 273.15

-- Função para converter para Kelvin
converterKelvin :: Double -> Temperatura -> Double
converterKelvin valor Celsius = valor + 273.15
converterKelvin valor Fahrenheit = (valor + 459.67) * 5 / 9
converterKelvin valor Kelvin = valor

-- Função para converter para Fahrenheit
converterFahrenheit :: Double -> Temperatura -> Double
converterFahrenheit valor Celsius = valor * 9 / 5 + 32
converterFahrenheit valor Fahrenheit = valor
converterFahrenheit valor Kelvin = valor * 9 / 5 - 459.67
