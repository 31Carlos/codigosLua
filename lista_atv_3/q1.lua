porta = {
    aberta = false,
    cor = "branca",
    dimensaox = 2.1,
    dimensaoy = 80,
    dimensaoz= 4.5,
    }

function porta:criaObjeto()
   local nova = {}
   nova = setmetatable(nova, {__index = porta})
   return nova 
end

function porta:abre()
    self.aberta = true
end

function porta:fecha()
    self.aberta = false
end

function porta:pinta(cor)
    self.cor = cor
end

function porta:estaAberta()
    return self.aberta 
end

porta:abre()

porta:pinta("azul")

porta["dimensaox"] = 3.5

porta["dimensaoy"] = 85

porta["dimensaoz"] = 5

porta:fecha()

if(porta:estaAberta()) then
    print("A porta esta aberta\n tem a cor: ".. porta.cor..
     "\n dimensoes: ".. porta.dimensaox.." ".. porta.dimensaoy.. " "..porta.dimensaoz)
else 
    print("A porta esta fechada\n tem a cor: ".. porta.cor..
     "\n dimensoes: ".. porta.dimensaox.." ".. porta.dimensaoy.. " "..porta.dimensaoz)
end

casa = {
    cor = "Branca",
    porta1 = porta:criaObjeto(),
    porta2 = porta:criaObjeto(),
    porta3 = porta:criaObjeto()
}

function casa:pinta(cor)
    self.cor = cor
end

function casa:quantasPortasEstaoAbertas()

    cont = 0

    if casa.porta1.aberta then
        cont = cont + 1
    end
    if casa.porta2.aberta then
        cont = cont + 1
    end
    if casa.porta3.aberta then
        cont = cont + 1
    end

    return cont
end


--function casa:totalDePortas()
  --  for 
--end

casa.porta1:abre()
casa.porta2:abre()


print(casa:quantasPortasEstaoAbertas())

