Sub inicial()
    For i = 2 To 8
        Name = Cells(i, i)
        Cells(i + 1, i + 1) = Name
        Cells(i, i) = ""
        For temp = 1 To 30000000
        Next temp
    Next i
    
    For a = 9 To 3 Step -1
        Name = Cells(a, 9)
        Cells(a - 1, 9) = Name
        Cells(a, 9) = ""
        For temp2 = 1 To 30000000
        Next temp2
    Next a
    
    For b = 9 To 3 Step -1
        Name = Cells(2, b)
        Cells(2, b - 1) = Name
        Cells(2, b) = ""
        For temp3 = 1 To 30000000
        Next temp3
    Next b
    
End Sub
