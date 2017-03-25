
function fatorial(n)

    f = 1
    
    for i = n, 1, -1 do 
        
        f = f  * i
    end 

    return f

end

print("digite um numero")

n = io.read("*number")

print("O fatorial e " .. fatorial(n))
