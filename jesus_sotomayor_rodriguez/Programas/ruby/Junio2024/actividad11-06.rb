puts "Ingrese el numero de autos"
aut = gets.chomp.to_i

for cant in 1..aut
    puts "Ingrese el digito de la placa"
    dig = gets.chomp.to_i
    
    if 1<= dig && dig <=2
        puts "La calcomanía es amarilla"

    elsif 3<= dig && dig <=4
        puts "La calcomanía es roja"

    elsif 5<= dig && dig <=6
        puts "La calcomanía es verde"

    elsif 7<= dig && dig <=8
        puts "La calcomanía es azul"

    elsif dig <= 9
        puts "La calcomanía es morada"

    else
        puts "Error. Ingreso más de un dígito"

    end
end