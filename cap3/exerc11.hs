-- Definição do tipo de dado Binario
data Binario = Zero | Um deriving (Show, Eq)

-- Definição do tipo de dado Funcao
data Funcao = Soma2 | Maior | Menor | Mult2 deriving Show

-- Função para aplicar a operação desejada
aplicar :: Funcao -> Binario -> Binario -> Binario
aplicar Soma2 Zero Zero = Zero
aplicar Soma2 Zero Um = Um
aplicar Soma2 Um Zero = Um
aplicar Soma2 Um Um = Zero
aplicar Maior Zero Zero = Zero
aplicar Maior Zero Um = Um
aplicar Maior Um Zero = Um
aplicar Maior Um Um = Um
aplicar Menor Zero Zero = Zero
aplicar Menor Zero Um = Zero
aplicar Menor Um Zero = Um
aplicar Menor Um Um = Zero
aplicar Mult2 Zero _ = Zero
aplicar Mult2 _ Zero = Zero
aplicar Mult2 Um Um = Um

-- Exemplo de uso:
-- aplicar Soma2 Um Um retorna Zero
