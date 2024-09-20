puts 'Ingrese el primer número:'
num1 = gets.chomp
num1 = Float(num1) rescue nil

puts 'Ingrese el segundo número:'
num2 = gets.chomp
num2 = Float(num2) rescue nil

if num1.nil? || num2.nil?
  puts 'Entrada inválida. Por favor ingrese números válidos.'
  exit
end

puts 'Seleccione una operación (+, -, *, /):'
operation = gets.chomp

result = nil

case operation
when '+'
  result = num1 + num2
when '-'
  result = num1 - num2
when '*'
  result = num1 * num2
when '/'
  if num2 == 0
    puts 'Error: No se puede dividir por cero.'
    exit
  else
    result = num1 / num2
  end
else
  puts 'Operación inválida.'
  exit
end

puts "Resultado: #{result}"