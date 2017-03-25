function maiores_da_lista(lista, n)
    
    resposta = ""

    for i = 1, #lista, 1 do
    
        if lista[i] > n then
            resposta = resposta .. " " .. lista[i]
        end

    end 
    return resposta
end

lista = {4, 8, 10, 2, 6}

print("Digite um numero")

n = io.read("*number")

print("[".. maiores_da_lista(lista, n).."]" )