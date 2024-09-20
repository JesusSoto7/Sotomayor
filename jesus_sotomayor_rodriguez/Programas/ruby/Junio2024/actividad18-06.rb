puts "Ingrese su nombre"
nombre = gets.chomp
nombreInverso = " "

(nombre.length - 1).downto(0) do |i|
  nombreInverso += nombre[i]
end

puts "Su nombre invertido es: #{nombreInverso}"