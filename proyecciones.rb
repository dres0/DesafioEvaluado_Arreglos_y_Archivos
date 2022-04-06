# Crear el programa proyecciones.rb y un archivo con las proyecciones de venta de cada
# mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en la misma
# carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido
# los siguientes datos:
# 300070,50520,35000,32810,47999,62050,89100,21000,100010,121900,99549,210
# 000

data = open("ventas_base.db").read.split(',')
data_float = data.map do |x|
    x.to_f
end

# El desafío consiste en hacer 2 simulaciones.
# ● Las ventas totales del primer semestre, dado que en la primera mitad del semestre
# se vende un 10% más.
# ● Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.

primeras_ventas_primer_semestre = data_float [0..2].sum
segundas_ventas_primer_semestre = data_float [2..5].sum
primeras_ventas_segundo_semestre = data_float [6..8].sum
segundas_ventas_segundo_semestre = data_float [9..11].sum


primeras_ventas_primer_semestre = primeras_ventas_primer_semestre*1.1
segundas_ventas_segundo_semestre = segundas_ventas_segundo_semestre*1.2


ventas_primer_semestre = primeras_ventas_primer_semestre + segundas_ventas_primer_semestre
ventas_segundo_semestre = segundas_ventas_segundo_semestre + primeras_ventas_segundo_semestre


union = [ventas_primer_semestre.round(2), ventas_segundo_semestre.round(2)].join("\n")
File.write("resultados.data", union)


# [dato1, dato2] => dato1
#                   dato2

# [dato1, dato2].join("\n") => dato1
#                              dato2

# File.write("nombre del archivo", variable a escribirle)
# [dato1, dato2] => dato1
#                   dato2

# [dato1, dato2].join("\n") => dato1
#                              dato2
# #round redondea

# print (ventas_primer_semestre.sum).round(1)
# # #ceil fuerza al limite superior
# print (ventas_primer_semestre.sum).ceil(1)
# # #floor fuerza al limite inferior
# print (ventas_primer_semestre.sum).floor(1)