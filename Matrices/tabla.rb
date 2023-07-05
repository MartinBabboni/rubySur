tablaDeContenido = [["  Números"," 1"],["  Letras"," 72"],["  Variables"," 118"]]
ancholinea=60
puts ""
puts "Tabla de Contenidos".center(ancholinea)
puts ""
nro =1
tablaDeContenido.each do |renglon|
    puts ("Capítulo "+nro.to_s+":"+ renglon[0]).ljust(ancholinea/2) + ("páginas"+renglon[1]).rjust(ancholinea/2)
    nro = nro+1
    end
