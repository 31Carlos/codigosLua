function calcula_media(n1, n2)
    media = (n1 + n2) / 2

    return media
end

function calcula_produto(n1, n2)
    produto = n1 * n2

    return produto
end

print("Digite o primeiro numero")

n1 = io.read("*number")

print("Digite o segundo numero")

n2 = io.read("*number")

print("A media é: " .. calcula_media(n1, n2))

print("O produto é: " .. calcula_produto(n1, n2))
