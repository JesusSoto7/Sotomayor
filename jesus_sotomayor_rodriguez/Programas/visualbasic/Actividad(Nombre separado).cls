Sub inicio()
    ' pide al usuario cuantas celdas va a escoger
    n = InputBox("Cuantos nombres a deletrear?")
    
    'Ciclo deacuerdo a la cantidad celdas escogidas por el usario
    For i = 1 To n
    'Se le asigna a la variable el valor de la celda inicial
    'Puede ser con Cells() o seleccionando la hoja como se muestra aqui
        Name = H1.Cells(i, 1)
    
    'Ciclo deacuerdo a la longitud del nombre
        For a = 1 To Len(Name)
        
        'Se le asigna a la celda los valores de los ciclos
        'en .cells se le suma uno a la (a) para que empieze desde la 2 columna y vaya avansando
        'mid se usa para sacar una cadena especifica del nombre =
        '(Es seleccionar donde empieza y la cantidad de caracteres(Longitud) de la palabra)
            H1.Cells(i, a + 1) = Mid(Name, a, 1)
            
        Next a
    Next i
End Sub
