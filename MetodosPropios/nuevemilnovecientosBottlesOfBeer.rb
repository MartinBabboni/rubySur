def numeroEnEspanol numero
  if numero < 0  #  No numeros negativos
    return 'Por favor ingresar un numero que no sea negativo.'
  end
  if numero == 0
    return 'cero'
  end

  #  No más casos especiales!  No más returns!

  numeroDeTexto = ''  #  Este es el texto que se devolverá.

  primeraPosicion = ['uno',     'dos',       'tres',    'cuatro',     'cinco',
               'seis',     'siete',     'ocho',    'nueve']
  segundaPosicion = ['diez',     'veinte',    'treinta',   'cuarenta',    'cincuenta',
               'sesenta',   'setenta',   'ochenta',   'noventa']
  entre11Y19 = ['once',  'doce',    'trece', 'catorce', 'quince',
               'dieciseis', 'diecisiete', 'dieciocho', 'diecinueve']
  entre21Y29 = ['veintiuno',  'veintidos',    'veintitres', 'veinticuatro', 'veinticinco',
               'veintiseis', 'veintisiete', 'veintiiocho', 'veintinueve']


  izquierda  = numero
  escrito = izquierda/1000          #  Cuantos miles faltan escribir?
  izquierda  = izquierda - escrito*1000  #  La esta de estos miles

  if escrito > 0
    #  Ahora hacemos un pequeño truco:
    miles  = numeroEnEspanol escrito
    numeroDeTexto = numeroDeTexto + miles + ' mil'

    if izquierda > 0
      #  So escribir  'dos ciencincuentaiuno'...
      numeroDeTexto = numeroDeTexto + ' '
    end
  end

  escrito = izquierda/100          #  Cuantos cientos faltan escribir?
  izquierda  = izquierda - escrito*100  #  La esta de estos cientos

  if escrito > 0
    #  Ahora hacemos un pequeño truco:
    cientos  = numeroEnEspanol escrito
    numeroDeTexto = numeroDeTexto + cientos + ' ciento'

    if izquierda > 0
      #  So escribir  'dos ciencincuentaiuno'...
      numeroDeTexto = numeroDeTexto + ' '
    end
  end

  escrito = izquierda/10          #  Cuántas decenas faltan escribir?
  izquierda  = izquierda - escrito*10  #  Resta de estas decenas.

  if escrito > 0
    if ((escrito == 1) and (izquierda > 0))
      numeroDeTexto = numeroDeTexto + entre11Y19[izquierda-1]

      izquierda = 0
    elsif ((escrito ==2 and (izquierda>0)))
      #  Similar para los veintipico
      numeroDeTexto = numeroDeTexto + entre21Y29[izquierda-1]
      izquierda = 0
    else
      numeroDeTexto = numeroDeTexto + segundaPosicion[escrito-1]
      #  Es "-1" porque segundaPosicion[3] es 'cuarenta', no 'treinta'.
    end

    if izquierda > 0
      #  No escribiremos 'sesentacuatro'...
      numeroDeTexto = numeroDeTexto + 'i'
    end
  end

  escrito = izquierda  #  Cuántos faltan?
  izquierda  = 0     #  Restar lo que falta.

  if escrito > 0
    numeroDeTexto = numeroDeTexto + primeraPosicion[escrito-1]
    #  Es "-1" porque primeraPosicion[3] es 'cuatro', no 'tres'.
  end

  #  Ahora solo retornamos "numeroDeTexto"...
  numeroDeTexto
end


bottles =9999

while bottles > 0
    puts numeroEnEspanol(bottles) + " bottles of beer on the wall " + numeroEnEspanol(bottles) + " bottles of beer"
    bottles -= 1
    puts "take one down pass it around " + numeroEnEspanol(bottles) + " bottles of beer on the wall "
end

puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall..."
