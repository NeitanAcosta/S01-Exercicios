data Bebida = Bebida {
    nome :: String,
    tipo :: String,
    preco :: Double
} deriving Show

data StatusPedido = Aberto | Entregue | Cancelado deriving (Show, Eq)

data Pedido = Pedido {
    bebidas :: [Bebida],
    status :: StatusPedido
} deriving Show

valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
    | status pedido == Cancelado = 0.0
    | otherwise = sum (map preco (bebidas pedido))

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido"
primeiraBebida (Pedido (b:_) _) = nome b

main :: IO ()
main = do
    let cafe = Bebida "Cafe Expresso" "Quente" 8.0
    let cha = Bebida "Cha Verde" "Quente" 7.5
    let suco = Bebida "Suco de Laranja" "Frio" 10.0

    let pedido1 = Pedido [cafe, cha] Entregue
    let pedido2 = Pedido [suco] Cancelado

    putStrLn ("Total Pedido 1: R$ " ++ show (valorTotalPedido pedido1))
    putStrLn ("Primeira bebida: " ++ primeiraBebida pedido1)

    putStrLn ("Total Pedido 2: R$ " ++ show (valorTotalPedido pedido2))
    putStrLn ("Primeira bebida: " ++ primeiraBebida pedido2)
