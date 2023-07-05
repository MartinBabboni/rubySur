class ArbolNaranja
    def initialize
        @altura = 150
        @edad = 1
        @naranjas = 0
    end
    def paso365dias
        @altura += 50
        @edad += 1
        if @edad > 4 && @edad < 12
            @naranjas = @edad*100
        end
        if @edad >= 12
            puts "El árbol de naranjas murio, alcanzó los 12 años"
            exit
        end
    end
    def altura
        puts @altura.to_s
    end
    def contarNaranjas
        puts @naranjas.to_s
    end
    def tomarUnaNaranja
        if @naranjas >=1
            @naranjas -= 1
            puts 'La naranja estaba deliciosa'
        else
            puts "El niño tiene sed y no hay naranjas, pero Tang le va encantar"
        end
    end
end

retonio = ArbolNaranja.new
retonio.paso365dias
retonio.altura
retonio.contarNaranjas
retonio.tomarUnaNaranja
5.times {retonio.paso365dias}
retonio.altura
retonio.contarNaranjas
retonio.tomarUnaNaranja
retonio.contarNaranjas
