puts "Dime un año de inicio"
inicio = gets.chomp.to_i
puts "Dime el año de fin"
fin = gets.chomp.to_i
while inicio <= fin
    if ((inicio%4==0 && inicio%100!=0) || (inicio%4==0&&inicio%400==0))
        puts inicio.to_s
        inicio +=1
    else
        inicio +=1
    end
end
