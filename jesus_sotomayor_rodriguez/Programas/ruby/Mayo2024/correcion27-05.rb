puts "Ingrese el valor"

a = gets.chomp.to_f

if  a <= 10
    desc1 = (a * 20)/100
    resul1 = a - desc1
    puts "Se le aplicó un descuento del 20% = #{resul1}"
else
    if
        a <= 100
        desc2 = (a * 10)/100
        resul2 = a - desc2
        puts "Se le aplicó un descuento del 10% = #{resul2}"
    else
        if
            a <= 1000
            desc3 = (a * 5)/100
            resul3 = a - desc3
            puts "Se le aplicó un descuento del 5% = #{resul3}"
        else
            desc4 = (a * 1)/100
            resul4 = a - desc4
            puts "Se le aplicó un descuento del 1% = #{resul4}"
        end
    end
end