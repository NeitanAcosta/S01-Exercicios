print("Digite o valor de M (inicio do intervalo):")
M = tonumber(io.read())

print("Digite o valor de N (fim do intervalo):")
N = tonumber(io.read())

print("Digite o valor de X (numero da tabuada):")
X = tonumber(io.read())

for i = M, N do
    resultado = X * i
    print(X .. " x " .. i .. " = " .. resultado)
end
