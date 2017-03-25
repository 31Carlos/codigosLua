function calcula_media_ponderada(peso1, peso2, nota1, nota2)
    
    return (nota1 + nota2) / (peso1 + peso2)

end

print("digite o peso da primeira prova")

peso1 = io.read("*number")

print("digite o peso da segunda prova")

peso2 = io.read("*number")

print("digite o numero da matricula do aluno")

matricula = io.read("*number") 

print("digite a nota da primeira prova")

nota1 = io.read("*number")

print("digite a nota da segunda prova")

nota2 = io.read("*number")

print("a media ponderada do aluno e:" .. calcula_media_ponderada(peso1, peso2, nota1, nota2))

