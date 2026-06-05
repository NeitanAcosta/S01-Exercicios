data Servico = Servico {
    nome :: String,
    tipo :: String,
    preco :: Double
} deriving Show

data StatusAtendimento = EmAndamento | Finalizado | Cancelado deriving (Show, Eq)

data Atendimento = Atendimento {
    servicos :: [Servico],
    status :: StatusAtendimento
} deriving Show

totalServicos :: [Servico] -> Double
totalServicos lista = sum (map preco lista)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | status atendimento == Cancelado = 0.0
    | length (servicos atendimento) > 3 = total * 1.25
    | otherwise = total
    where total = totalServicos (servicos atendimento)

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum servico encontrado"
primeiroServico (Atendimento (s:_) _) = nome s

main :: IO ()
main = do
    let banho = Servico "Banho Espiritual" "Limpeza" 50
    let massagem = Servico "Massagem" "Relaxamento" 40
    let refeicao = Servico "Refeicao" "Alimentacao" 35
    let hospedagem = Servico "Hospedagem" "Estadia" 80

    let atendimento1 =
            Atendimento [banho, massagem, refeicao, hospedagem] Finalizado

    let atendimento2 =
            Atendimento [banho, refeicao] EmAndamento

    putStrLn ("Valor Atendimento 1: R$ " ++ show (valorFinalAtendimento atendimento1))
    putStrLn ("Primeiro servico: " ++ primeiroServico atendimento1)

    putStrLn ("Valor Atendimento 2: R$ " ++ show (valorFinalAtendimento atendimento2))
    putStrLn ("Primeiro servico: " ++ primeiroServico atendimento2)
