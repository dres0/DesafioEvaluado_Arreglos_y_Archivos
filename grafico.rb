# Crear el archivo grafico.rb utilizando el método chart, que construya el siguiente gráfico
# en la consola, a partir de un arreglo con datos numéricos.

# ➜ irb
# 2.6.0 :001 > require_relative "grafico"
# => true
# 2.6.0 :002 > chart([5, 3, 2, 5, 10])
# |**********
# |******
# |****
# |**********
# |********************
# >--------------------
# 1 2 3 4 5 6 7 8 9 10


data =[5, 3, 2, 5, 10]

def chart(arr)
    arr.map do |valor|
        print "|"
        (valor*2).times do |valor_2|
            print "*"
        end 
        print "\n"
    end
    print ">"
    (arr.max*2).times do |valor_2|
        print "-"
    end
    print "\n"
    (arr.max).times do |valor_indice|
        print "#{valor_indice + 1} "
    end
end

chart(data)