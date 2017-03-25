jogo_da_velha = {
    jogo = {}
}

--metodo preenche todas as posicoes com string vazia (" ")
function jogo_da_velha:posicoes()
    for i = 1, 3, 1 do
       self.jogo[i] = {}
        for f = 1, 3, 1 do
            self.jogo[i][f] = " "
        end
    end
end

--metodo mostra o mostra_tabuleiro
function jogo_da_velha:mostra_tabuleiro()
    local tabela = "| 0 | 1 | 2 | 3 |\n"
    for i = 1, 3, 1 do
        tabela = tabela.."| " .. i.. " | "
        for f = 1, 3, 1 do
            tabela = tabela.. self.jogo[i][f].. " | "
        end
        tabela = tabela.. "\n"
    end
    return tabela
end

--metodo verifica se nova jogada e valida 
function jogo_da_velha:validar_jogada(linha, coluna)
    if self.jogo[linha][coluna] ~= "o" and self.jogo[linha][coluna] ~= "x" then
        
        return true        
    end
    return false
end

--metodo verifica se ja tem um vencedor
function jogo_da_velha:vencedor()
    valor = ""
    local resposta = false
    
    if self.jogo[1][1] == "x" or self.jogo[1][1] == "o" then
        if self.jogo[1][1] == self.jogo[1][2] and self.jogo[1][2] == self.jogo[1][3] then
            valor = self.jogo[1][1]
            resposta = true
        end
        if self.jogo[1][1] == self.jogo[2][1] and self.jogo[2][1] == self.jogo[3][1] then
            valor = self.jogo[1][1]
            resposta = true
        end
    end
    if self.jogo[2][2] == "x" or self.jogo[2][2] == "o" then
        if self.jogo[2][1] == self.jogo[2][2] and self.jogo[2][2] == self.jogo[2][3] then
            valor = self.jogo[2][2]
            resposta = true
        end
        if self.jogo[1][2] == self.jogo[2][2] and self.jogo[2][2] == self.jogo[3][2] then
            valor = self.jogo[1][2]
            resposta = true
        end
        if self.jogo[1][1] == self.jogo[2][2] and self.jogo[2][2] == self.jogo[3][3] then
            valor = self.jogo[1][1]
            resposta  = true
        end
        if self.jogo[1][3] == self.jogo[2][2] and self.jogo[2][2] == self.jogo[3][1] then
            valor = self.jogo[1][3]
            resposta = true
        end
    end
    if self.jogo[3][3] == "x" or self.jogo[3][3] == "o" then
        if self.jogo[3][1] == self.jogo[3][2] and self.jogo[3][2] == self.jogo[3][3] then
            valor = self.jogo[3][3]
            resposta = true
        end
        if self.jogo[1][3] == self.jogo[2][3] and self.jogo[2][3] == self.jogo[3][3] then
            valor = self.jogo[1][3]
            resposta = true
        end
    end

    return resposta
end

--metodo verifica se o jogo deu empate
function jogo_da_velha:empate()
    
    local cont = 0
    for i = 1, 3, 1 do
        for f = 1, 3, 1 do
            if self.jogo[i][f] == "x" or self.jogo[i][f] == "o" then
                cont = cont + 1
            end    
        end
    end
    if cont == 9 then
        return true
    end
    return false
end

--metodo verifica se o jogo acabou
function jogo_da_velha:fimDeJogo()
    
    if jogo_da_velha:vencedor() then
        if valor == "o" then
            
            print(jogo_da_velha:mostra_tabuleiro())
            print("\n")
            print("Jogador 1 venceu!")
            return true
        end
        if valor == "x" then
            
            print(jogo_da_velha:mostra_tabuleiro())
            print("\n")
            print("Jogador 2 venceu!")
            return true
        end
        return false
    end

    if jogo_da_velha:empate() and jogo_da_velha:vencedor() == false then
        
        print(jogo_da_velha:mostra_tabuleiro())
        print("\n")
        print("O jogo deu empate!")
        return true
    end
    
    return false
end



print("Novo jogo:\n")
print("sim  |  nao")
inicia = io.read()

if inicia == "sim" then

    jogo_da_velha:posicoes()

    contador = 1
    
    repeat
    
    print(jogo_da_velha:mostra_tabuleiro())


    print("linha: ")
    linha = io.read("*number")
    print("coluna: ")
    coluna = io.read("*number")
    print("\n \n \n")
    
    if jogo_da_velha:validar_jogada(linha, coluna) then
        
        if contador % 2 ~= 0 then
            jogo_da_velha.jogo[linha][coluna] = "o" 
            contador = contador + 1
        else if contador % 2 == 0 then
            jogo_da_velha.jogo[linha][coluna] = "x"
            contador = contador + 1
        end
        end
    end
    until(jogo_da_velha:fimDeJogo() == true)
else
    print("xau querida!!")
end

