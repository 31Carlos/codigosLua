function distancia(x1, x2, y1, y2)
    x = (x1 - x2)^2
    y = (y1 - y2)^2


    d = math.sqrt(x + y) 
    
    return d

end


print("Digite o valor do x1")

x1 = io.read("*number")

print("Digite o valor do x2")

x2 = io.read("*number")

print("Digite o valor do y1")

y1 = io.read("*number")

print("Digite o valor do y2")

y2 = io.read("*number")

print("A distancia entre os pontos é: " .. distancia(x1, x2, y1, y2))




