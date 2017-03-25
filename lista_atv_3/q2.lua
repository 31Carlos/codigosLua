pais = {
    nome = "",
    capital = "",
    dimensao = 0.0,
    paises_vizinhos = {}
}

function pais:paisesIguais(outro)
    
    if self.nome == outro.nome and self.capital == outro.capital then
        return self.nome.. " e igual ao pais ".. outro.nome 
    else
        return self.nome.. " nao e igual ao pais ".. outro.nome 
    end

end

function pais:listaDeVizinhos(outro)
    
    resposta = ""    
    
    for i = 1, #self.paises_vizinhos, 1 do
        
        for f = 1, #outro.paises_vizinhos, 1 do
            if self.paises_vizinhos[i] == outro.paises_vizinhos[f] then
                resposta = resposta.. " ".. self.paises_vizinhos[i]
            end
        end
    end
    return resposta
end

function pais:novoObjeto()
    local novoPais = {}
    novoPais = setmetatable(novoPais, {__index = pais})
    return novoPais
end

pais1 = pais:novoObjeto()
pais2 = pais:novoObjeto()
pais3 = pais:novoObjeto()


pais1.nome = "Brasil"
pais1.capital = "Brasilia"
pais1.dimensao = 12.9
pais1.paises_vizinhos = {"Argentina", "Chile","Uruguai"}

pais2.nome = "Argentina"
pais2.capital = "Buenos Aires"
pais2.dimensao = 5.5
pais2.paises_vizinhos = {"Chile", "Brasil", "Uruguai"}


print(pais1:paisesIguais(pais2))

print(pais1:listaDeVizinhos(pais2))
