puts "Ingrese el número de estudiantes"
num = gets.chomp.to_i
estu = 1

while num >0
    puts "Ingrese el nombre del estudiante #{estu}"
    name = gets.chomp
    
    puts "Ingrese el apellido del estudiante #{estu}"
    ape = gets.chomp

    puts "Ingrese la primera nota"
    n1 = gets.chomp.to_f

    puts "Ingrese la segunda nota"
    n2 = gets.chomp.to_f

    puts "Ingrese la tercera nota"
    n3 = gets.chomp.to_f

    prom = (n1 + n2 + n3)/3

    if prom >= 6
        puts "#{name} #{ape} tiene un promedio de: #{prom} - aprobo"
    else
        puts "#{name} #{ape} tiene un promedio de: #{prom} - no aprobo"
    end

    num -= 1
    estu += 1

end