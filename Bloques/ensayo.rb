def prueba &bloque
    puts 'Aquí comienza la prueba'
    puts bloque.call
    puts 'Aqui finaliza la prueba'
end

prueba do
    puts 'Esto es el primer bloque'
end

prueba do
    puts 'Este es el segundo bloque'
    prueba do
        "acarició el sol".length
    end
end
