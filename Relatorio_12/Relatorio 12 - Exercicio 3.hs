data Banda = Banda {
    nome :: String,
    genero :: String,
    cache :: Double
} deriving Show

data StatusEvento = Ativo | Encerrado | Cancelado deriving (Show, Eq)

data Evento = Evento {
    bandas :: [Banda],
    status :: StatusEvento
} deriving Show

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
    | status evento == Cancelado = 0.0
    | otherwise = total * 1.2
    where total = sum (map cache (bandas evento))

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda cadastrada"
bandaAbertura (Evento (b:_) _) = nome b

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda cadastrada"
bandaEncerramento (Evento bs _) = nome (last bs)

main :: IO ()
main = do
    let banda1 = Banda "Imagine Dragons" "Rock" 5000
    let banda2 = Banda "Coldplay" "Pop Rock" 8000
    let banda3 = Banda "Linkin Park" "Rock" 7000

    let evento1 = Evento [banda1, banda2] Ativo
    let evento2 = Evento [banda2, banda3] Encerrado
    let evento3 = Evento [banda1] Cancelado

    putStrLn "Evento Ativo:"
    print (custoTotalEvento evento1)
    putStrLn ("Abertura: " ++ bandaAbertura evento1)
    putStrLn ("Encerramento: " ++ bandaEncerramento evento1)

    putStrLn "\nEvento Encerrado:"
    print (custoTotalEvento evento2)
    putStrLn ("Abertura: " ++ bandaAbertura evento2)
    putStrLn ("Encerramento: " ++ bandaEncerramento evento2)

    putStrLn "\nEvento Cancelado:"
    print (custoTotalEvento evento3)
    putStrLn ("Abertura: " ++ bandaAbertura evento3)
    putStrLn ("Encerramento: " ++ bandaEncerramento evento3)
