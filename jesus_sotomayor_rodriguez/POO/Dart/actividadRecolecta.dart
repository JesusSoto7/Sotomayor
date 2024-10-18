import 'dart:io';
import '../Clases/Colaborador.dart';
import '../Clases/Recolecta.dart';

void main(){

  Recolecta re = Recolecta(50000,0);
  
  while (!re.finalizada()){
    print('Ingrese su nombre');
    String nombre = stdin.readLineSync()!;
    print('Valor a aportar');
    double aporte = double.parse(stdin.readLineSync()!); 
    print('Tipo');
    int tipo = int.parse(stdin.readLineSync()!);

    Colaborador co = Colaborador(nombre,aporte,tipo);
    re.addColaborador(co);
  }

  print('///////////////////////////////////////////////');
  
  print('Total Recolectado por los generosos: ${re.recaudoGeneroso()}');

  print('Promedio recolectado por los generosos: ${re.promedioGeneroso()}');

  print('Total recolectador por los aprendices: ${re.recaudoPorTipo(1)}');

  print('Total recolectador por los instructores: ${re.recaudoPorTipo(2)}');

  print('Total recolectado: ${re.totalGeneral()}');

  print('Promedio General ${re.promedioGeneral()}');
    
  
}