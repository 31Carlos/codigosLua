function inss(sb)


    return sb * 0.1

end

function fgts(sb)

    return sb * 0.08

end

plano_de_saude = 100.00


print("digite o valor do salario bruto")

sb = io.read("*number")

total = sb - (inss(sb) + fgts(sb) + plano_de_saude)

print("salario bruto: " .. sb .. "\nDesconto INSS: " .. inss(sb) ..
"\nDesconto FGTS: " .. fgts(sb) .. "\nDesconto Plano de Saude: " .. plano_de_saude .. "\nTotal: " .. total )
