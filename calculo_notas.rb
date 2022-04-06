# Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que
# reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.

data = open('notas.data').readlines
data = data.map do |reg| 
    reg.split(',')
end

def nota_mas_alta(x)
    nota = x[1..5]
    nota = nota.map do |element|
        element.to_i
    end
    nota.max
end
print nota_mas_alta(data[1])
puts