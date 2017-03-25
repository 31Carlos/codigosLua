function mostra_impares(lista)
    resposta = ""
    for i = 1, #lista, 1 do
        if lista[i] % 2 ~= 0 then
            resposta = resposta.. " ".. lista[i]
        end
    end
    return resposta
end

lista = {1, 2, 4, 5, 7, 3, 6}

print("Os impares sao: \n".. mostra_impares(lista))