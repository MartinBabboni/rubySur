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

  #  "izquierda" es cuanto del numero aun falta escribir
  #  "escrito" es la parte que estamos escribiendo en este momento.
  #  escrito y izquierda... lo captas?  :)
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

    # Eso se llama "recursividad". Entonces, ¿Qué acabo de hacer?
    # Le dije a este método para llamarse a sí mismo, pero con "escrito" en vez de
    # "numero". Recuerde que "escrito" es (por el momento) el número de
    # cientos que tenemos que escribir. Después añadimos "hundred" de "numeroDeTexto",
    # añadimos la cadena 'cien' después de él. Así, por ejemplo, si
    # se llamó originalmente numeroEnEspanol con el 1999 (por lo que "numero" = 1999),
    # y luego en este momento "escrito" sería 19, y la "izquierda" sería 99.
    # La más perezoso que se puede hacer en ese momento es que numeroEnEspanol
    # escriba 'diecinueve' para nosotros, entonces escribimos 'cien',
    # y luego el resto de numeroEnEspanol escribe "noventa y nueve".

    if izquierda > 0
      #  So escribir  'dos ciencincuentaiuno'...
      numeroDeTexto = numeroDeTexto + ' '
    end
  end

  escrito = izquierda/10          #  Cuántas decenas faltan escribir?
  izquierda  = izquierda - escrito*10  #  Resta de estas decenas.

  if escrito > 0
    if ((escrito == 1) and (izquierda > 0))
      #  No podemos escribir "diez-dos" en vez de "doce",
      #  hacemos una excepción especial.
      numeroDeTexto = numeroDeTexto + entre11Y19[izquierda-1]
      #  Es "-1" porque entre11Y19[3] es 'catorce', no 'trece'.

      #  Ya que tomamos el dígito que nos faltaba,
      #  no tenemos nada más que escribir.
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

puts numeroEnEspanol(  0)
puts numeroEnEspanol(  9)
puts numeroEnEspanol( 10)
puts numeroEnEspanol( 11)
puts numeroEnEspanol( 17)
puts numeroEnEspanol( 32)
puts numeroEnEspanol( 88)
puts numeroEnEspanol( 99)
puts numeroEnEspanol(100)
puts numeroEnEspanol(101)
puts numeroEnEspanol(234)
puts numeroEnEspanol(3211)
puts numeroEnEspanol(999999)
puts numeroEnEspanol(1000000000000)
