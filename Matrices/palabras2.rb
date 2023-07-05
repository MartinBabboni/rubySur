palabras = []
ingreso = "inicio"
while ingreso !=""
    puts "Ingresa una palabra"
    ingreso = gets.chomp.capitalize
    palabras.push ingreso
end

listaOrdenada = []
d=0
while listaOrdenada.length != palabras.length
    palabras.each do |palabra|
        c=0
        palabras.each do |palabra2|
            if (palabra > palabra2)
                c = c+=1
                end
            end
            if (c==d)
                listaOrdenada.push palabra
                d = d+1
            end
    end
end
puts palabras
#puts " "
puts listaOrdenada
