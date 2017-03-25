function divisores(n)

    resposta = ""

    for i = 1, n, 1 do
    
        if n%i == 0 then
            resposta = resposta .. " " .. i 
        end

    end

    return print("Os divisores sao: \n" .. resposta)
end

print("Digite um numero")

n = io.read("*number")

divisores(n)
