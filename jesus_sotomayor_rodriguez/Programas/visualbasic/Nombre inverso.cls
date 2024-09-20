Sub inicio()
    'Pedir al usuario un valor númerico
    num = Int(InputBox("Ingrese número de estudiantes: "))
    
    'Esto define cuantas veces se ve a repetir
    For ciclo = 1 To num
        Name = InputBox("Ingrese su nombre")
        dname = Len(Name)
        
        'Se crea esta variable fuera para que no se acumulen los nombres y siempre este vacia cuando se repita
        acu = " "
        
        'Ciclo para poner el nombre inverso
        For re = dname To 1 Step -1
        namealrevez = Mid(Name, re, 1)
        
        'Esto es un acumulable que guarda los caracteres dependiendo cuanto se repita el ciclo
        acu = acu + namealrevez
        Next re
    
        'Esto se usa para imprimir mensajes y al final se ve como se agg una variable al mensaje
        MsgBox "El nombre del estudiante inverso es: " & acu
    Next ciclo
End Sub
