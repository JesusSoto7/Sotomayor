Sub inicio()
    'Probando operaciones
    num = Int(InputBox("Ingrese un número"))
    num2 = Int(InputBox("Ingrese un segundo número"))
    suma = num + num2
    resta = num - num2
    mult = num * num2
    divi = num / num2
    MsgBox "La suma de los números es: " & suma
    MsgBox "La resta de los números es: " & resta
    MsgBox "La multiplicacion de los números es: " & mult
    MsgBox "La division de los números es: " & divi
End Sub
