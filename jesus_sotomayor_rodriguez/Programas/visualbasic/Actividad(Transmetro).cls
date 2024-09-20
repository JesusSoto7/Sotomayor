Sub inicio()

    'Ciclo para que cambie de celda 10 veces la palabra establecida
    For i = 1 To 10
    
    'Mensaje que sirve para ver el progreso del ciclo pausado
    MsgBox "Ok"
    
    'Le asigne ala variable Name el valor de la celda donde esta la palabra (la celda cambia cada que se repite el ciclo)
    Name = Cells(1, i)
    
    'A la celda le asigne el valor de Name
    'le sume uno a (i) para que la palabra se pase a la celda siguiente y seguir utilizando un solo ciclo
    Cells(1, i + 1) = Name
    
    'Para despues de que pase la palabra ala siguiente celda se borre en la anterior
    Cells(1, i) = ""
    Next i
    
    'Mensaje para ver el ultimo salto de celda y finalizar con estilo
    MsgBox "Recorrido terminado"
   
End Sub
