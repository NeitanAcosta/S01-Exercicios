data Item = Item {
    nome :: String,
    categoria :: String,
    preco :: Double
} deriving Show

data StatusCompra = Pendente | Concluida | Cancelada deriving (Show, Eq)

data Compra = Compra {
    itens :: [Item],
    status :: StatusCompra
} deriving Show

totalItens :: [Item] -> Double
totalItens lista = sum (map preco lista)

valorFinal :: Compra -> Double
valorFinal compra
    | status compra == Cancelada = 0.0
    | total > 200 = total * 0.9
    | otherwise = total
    where total = totalItens (itens compra)

main :: IO ()
main = do
    let espada = Item "Master Sword" "Arma" 150.0
    let escudo = Item "Hylian Shield" "Defesa" 120.0
    let pocao = Item "Pocao Vermelha" "Consumivel" 30.0

    let compra = Compra [espada, escudo, pocao] Concluida

    putStrLn ("Valor final da compra: R$ " ++ show (valorFinal compra))
