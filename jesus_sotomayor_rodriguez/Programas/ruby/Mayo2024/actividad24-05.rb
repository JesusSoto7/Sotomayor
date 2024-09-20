puts "Ingrese su nombre"
n = gets.chomp

puts "Ingrese su apellido"
ap = gets.chomp

puts "Por favor ingrese un numero"
n1 = gets.chomp.to_i

puts "Por favor ingrese un segundo numero"
n2 = gets.chomp.to_i

puts "Por favor ingrese un tercer numero"
n3 = gets.chomp.to_i

sum = n1 + n2 + n3
prom = sum / 3.to_f
puts "Su nombre completo es: #{n} #{ap}"
puts "El promedio de los numeros ingresados es: #{prom}"