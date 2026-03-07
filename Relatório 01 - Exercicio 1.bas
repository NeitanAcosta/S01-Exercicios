Dim n1 As Double
Dim n2 As Double
Dim n3 As Double
Dim p1 As Double
Dim p2 As Double
Dim p3 As Double
Dim media As Double

Input "Digite a primeira nota: ", n1
Input "Digite o peso da primeira nota: ", p1

Input "Digite a segunda nota: ", n2
Input "Digite o peso da segunda nota: ", p2

Input "Digite a terceira nota: ", n3
Input "Digite o peso da terceira nota: ", p3

media = (n1 * p1 + n2 * p2 + n3 * p3) / (p1 + p2 + p3)

Print "Media ponderada = "; media

If media >= 70 Then
    Print "Aprovado direto"
Else
    Print "Reprovado direto"
End If