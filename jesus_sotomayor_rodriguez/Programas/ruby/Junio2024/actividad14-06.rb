print 'Ingrese un número para ver su tabla de multiplicación: '
num = gets.chomp

num = Integer(num) rescue nil

if num.nil?
  puts 'Por favor ingrese un número válido.'
else
  puts "Tabla de multiplicar del #{num}:"
  (1..10).each do |tabla|
    puts "#{num} x #{tabla} = #{num * tabla}"
  end
end