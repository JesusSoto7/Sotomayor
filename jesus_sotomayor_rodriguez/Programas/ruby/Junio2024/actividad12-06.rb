puts "Ingrese el número"
num = gets.chomp.to_i

if num >0
    puts "El número #{num} es positivo"
else
    if num <0
        puts "El número #{num} es negativo"     
    else
        puts "El número ingresado es cero"
    end
end