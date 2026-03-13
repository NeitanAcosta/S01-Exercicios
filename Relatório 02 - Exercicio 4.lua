function soma(a, b)
    return a + b
end

function subtracao(a, b)
    return a - b
end

function multiplicacao(a, b)
    return a * b
end

function divisao(a, b)
    return a / b
end

function calculadora(a, b, operador)
    if operador == "+" then
        return soma(a, b)
    elseif operador == "-" then
        return subtracao(a, b)
    elseif operador == "*" then
        return multiplicacao(a, b)
    elseif operador == "/" then
        return divisao(a, b)
    else
        return "Erro: operador invalido"
    end
end

print("Digite o primeiro numero:")
a = tonumber(io.read())

print("Digite o segundo numero:")
b = tonumber(io.read())

print("Digite o operador (+ - * /):")
op = io.read()

resultado = calculadora(a, b, op)

print("Resultado:", resultado)
