puts '¿Cuál es tu nombre?'
name = gets.chomp
puts '¿Cuál es tu segundo nombre?'
sname = gets.chomp
puts '¿Cuál es tu apellido?'
apellido = gets.chomp
puts '¿Sabes que hay ' + ((name+sname+apellido).length).to_s + ' letras en tu nombre completo, ' + name + " " + sname + " " + apellido + '?'
