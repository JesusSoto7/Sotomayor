puts "Ingrese el valor"
a = gets.chomp.to_i

if 0<= a && a <=10
    desc1 = a * 0.20.to_f
    puts "Se le aplicó un descuento de 20% = #{a - desc1}"

elsif 11<= a && a <=100
    desc2 = a * 0.10.to_f
    puts "Se le aplicó un descuento de 10% = #{a - desc2}"

elsif 101<= a && a <=1000
    desc3 = a * 0.05.to_f
    puts "Se le aplicó un descuento de 5% = #{a - desc3}"

elsif a > 1000
    desc4 = a * 0.01.to_f
    puts "Se le aplicó un descuento de 1% = #{a - desc4}" 
end