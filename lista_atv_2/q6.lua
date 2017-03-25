function calcula_numeros_primos()
    
    resposta = "1"
    
    
    for i = 1, 50, 1 do
    cont = 0    
        
        for f = 1, i, 1 do

            
            if i%f == 0 then
                cont = cont + 1 
                    
            end
            
            if cont == 2 and f == i then
                
                resposta = resposta.. " ".. i
                
            end
        end
         
    end

    return print("Os numeros primos sao: \n" .. resposta)
end

calcula_numeros_primos()
