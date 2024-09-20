puts "Por favor introduce un número:"
num1 = gets.chomp.to_i

puts "Por favor introduce un segundo número:"
num2 = gets.chomp.to_i

suma = num1 + num2
resta = num1 - num2
mult = num1 * num2
div = num1.to_f / num2

puts "El resultado de la suma de los números: #{suma}"
puts "El resultado de la resta de los números: #{resta}"
puts "El resultado de la multiplicacion de los números: #{mult}"
puts "El resultado de la division de los números: #{div}"