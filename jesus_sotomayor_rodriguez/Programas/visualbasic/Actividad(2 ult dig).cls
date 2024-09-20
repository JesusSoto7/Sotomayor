Sub inicio()
    num = InputBox("Ingrese la cantidad de nombres")
    For i = 1 To num
        Name = Cells(i + 1, 1)
        digitos = Mid(Name, Len(Name) - 1, 2)
        Cells(i + 1, 2) = digitos
    Next i
End Sub
