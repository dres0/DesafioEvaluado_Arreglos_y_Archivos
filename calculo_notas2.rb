# Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
# que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno.

data = open('notas.data').readlines
data = data.map do |reg| 
    reg.split(',')
end

def nota_mas_alta(arr)
    lista_notas = []
    arr.map do |x|
        nota = []
        x.each_with_index do |element, index|
            next if index == 0
            nota.push(element.to_i)
        end 
        lista_notas << nota.max
    end
    return lista_notas.join(",")
end 
print nota_mas_alta(data)
puts