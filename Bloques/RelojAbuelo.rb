def relojAbuelo &bloque
    hora = Time.now.hour
    if hora <= 11
        hora += 1
    else
        hora -=11
    end
    hora.times {bloque.call}
end

relojAbuelo do
    puts 'dong'
end

relojAbuelo do
    puts 'ding'
end
