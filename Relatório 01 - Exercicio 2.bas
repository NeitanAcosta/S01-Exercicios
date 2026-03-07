Dim senha As Integer
Dim senhaCorreta As Integer

senhaCorreta = 2026

Input "Digite a senha: ", senha

While senha <> senhaCorreta
    Print "Senha incorreta, tente novamente."
    Input "Digite a senha: ", senha
Wend

Print "Acesso liberado"