puts "Ingrese el número de estudiantes"
num = gets.chomp.to_i

for estu in 1..num
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
        print "#{name} #{ape} tiene un promedio de: #{prom} - aprobo
"
    else
        print "#{name} #{ape} tiene un promedio de: #{prom} - no aprobo
"
    end
end