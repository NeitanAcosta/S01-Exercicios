print("Digite quantos numeros deseja inserir:")
N = tonumber(io.read())

numeros = {}
impares = {}

for i = 1, N do
    print("Digite o numero " .. i .. ":")
    numeros[i] = tonumber(io.read())
end

j = 1

for i = 1, N do
    if numeros[i] % 2 ~= 0 then
        impares[j] = numeros[i]
        j = j + 1
    end
end

print("Numeros impares encontrados:")

for i = 1, #impares do
    print(impares[i])
end
