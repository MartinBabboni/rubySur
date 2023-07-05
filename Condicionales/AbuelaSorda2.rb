respuesta =""
rep = 0
puts "Hola mijito, ¿cómo anda? ¿por qué nunca viene a visitar a la abuelita?"
while rep != 3
    respuesta = gets.chomp
    if respuesta == "ADIOS"
        rep +=1
    else
        rep = 0
        nro = rand (1930..1950)
        if respuesta !=respuesta.upcase
            puts "HUH?! ¡HABLA MAS FUERTE, HIJO!"
        else
            puts "NO,¡NO DESDE "+ nro.to_s
        end
    end
end
