palabras = []
palabra = "inicio"
while palabra !=""
    puts "Ingresa una palabra"
    palabra = gets.chomp
    palabras.push palabra
end
puts palabras.sort
