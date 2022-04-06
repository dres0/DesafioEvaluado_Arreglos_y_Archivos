# Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que
# reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.

data = open('notas.data').readlines
data = data.map do |reg| 
    reg.split(',')
end

print data