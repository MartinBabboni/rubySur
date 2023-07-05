def log $nombre, $argumento, &unBloque
    puts'A partir de " '+nombre+'"..'
    unBloque.call
    puts '.... '+nombre+', terminó, regreso: '+ argumento.to_s
end

log 'bloque externo', '5' do
     log 'bloque pequeño', 'Me gusta la comida tailandesa!' do
         log 'bloque pequñito', 'un montón de amor' do
         end

        #puts '..."un bloque pequeño" terminó, regreso: '
        #argumento = argumento.length.to_s
         #puts nombre
        end
     log 'otro bloque', false do
         end

    #puts '..."un bloque pequeño" terminó, regreso: 5'
end





