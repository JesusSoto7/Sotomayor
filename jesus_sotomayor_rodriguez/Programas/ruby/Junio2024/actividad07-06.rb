puts "Ingrese el número de aprendices"
nume = gets.chomp.to_i

con = 0

acu = 0

con2 = 0

acu2 = 0

for n in 1..nume
    puts "Ingrese el valor a abonar por el aprendiz #{n}:"
    val = gets.chomp.to_i

    if val >= 5000
        con += 1
        acu += val

    else 
        con2 += 1
        acu2 += val
    end
end
canti = acu + acu2

prom = canti / nume.to_f

prom2 = acu / con.to_f

prom3 = acu2 / con2.to_f

puts "Cantidad total: #{canti}"

puts "promedio general: #{prom}"

puts "Cantidad de aprendices que donaron más o igual a 5000: #{con}"

puts "Cantidad de aprendices que donaron menos de 5000: #{con2}"

puts "Total de los que donaron más o igual a 5000: #{acu}"

puts "Total de los que donaron menos de 5000: #{acu2}"

puts "Promedio de los que donaron más o igual a 5000: #{prom2}"

puts "Promedio de los que donaron menos de 5000: #{prom3}"