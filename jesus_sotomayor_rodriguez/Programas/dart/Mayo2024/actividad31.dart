import 'dart:io';
void main(){
  print ('Ingrese el número de estudiantes');
  int num = int.parse(stdin.readLineSync()!);
  
  for (int estu = 1; num >= estu; estu++){
    print ('Ingrese el nombre del estudiante $estu');
    String? name = stdin.readLineSync();

    print ('Ingrese el apellido del estudiante $estu');
    String? ape = stdin.readLineSync();

    print ('Ingrese la primera nota');
    double n1 = double.parse(stdin.readLineSync()!);

    print ('Ingrese la segunda nota');
    double n2 = double.parse(stdin.readLineSync()!);

    print ('Ingrese la tercera nota');
    double n3 = double.parse(stdin.readLineSync()!);

    double prom = (n1 + n2 + n3)/3;
    
    if( prom >= 6){
      print ('$name $ape tiene un promedio de: $prom - Aprobo');
    }else{
      print ('$name $ape tiene un promedio de: $prom - No aprobo');
    }
  }
}