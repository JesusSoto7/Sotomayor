Sub inicio()
   
    fi = InputBox("Ingrese el número de celdas")
    
    For i = 2 To fi + 1
        ' Leer los valores de las celdas
        Val1 = Cells(i, 2)
        val2 = Cells(i, 1)
        val3 = Cells(i, 3)
        
        ' Calcular las longitudes de las cadenas
        ca = Len(Val1)
        ca2 = Len(val2)
        ca3 = Len(val3)
        
        ' Calcular las posiciones para la función Mid
        res = ca2 - 1
        res2 = ca3 - 2
        
        ' Extraer subcadenas
        co = Mid(Val1, 1, 3)
        co2 = Mid(val2, res, 2)
        co3 = Mid(val3, res2, 3)
        
        ' Concatenar las partes para formar el código
        codigo = co & co2 & co3
        
        ' Asignar el código a la celda correspondiente
        Cells(i, 4) = codigo
    Next i
End Sub

