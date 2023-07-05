respuesta =""
puts "Hola mijito, ¿cómo anda? ¿por qué nunca viene a visitar a la abuelita?"
while respuesta !="ADIOS"
    nro = rand (1930..1950)
    respuesta = gets.chomp
    if respuesta !=respuesta.upcase
        puts "HUH?! ¡HABLA MAS FUERTE, HIJO!"
    else
        puts "NO,¡NO DESDE "+ nro.to_s
    end
end
