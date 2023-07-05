def log nombre, argumento, &unBloque
    puts'A partir de " '+nombre+'"..'
    unBloque.call(argumento)
    puts '.... '+nombre+', terminó, regreso: '
end

log 'bloque externo', 'Me gusta la comida Tailandesa'  do
    log 'bloque pequeño', 'Me gusta la comida Tailandesa' do
        #puts argumento
        end
     log 'otro bloque', false do
        end
        argumento.length.t_s
end





