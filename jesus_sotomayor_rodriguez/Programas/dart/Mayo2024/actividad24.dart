import'dart:io';
void main(){
  print ('Ingrese su nombre');
  String? n = stdin.readLineSync();
  print ('Ingrese su apellido');
  String? ap = stdin.readLineSync();
  print ('Por favor ingrese un numero');
  int n1 = int.parse(stdin.readLineSync()!);
  print ('Por favor ingrese un segundo numero');
  int n2 = int.parse(stdin.readLineSync()!);
  print ('Por favor ingrese un tercer numero');
  int n3 = int.parse(stdin.readLineSync()!);
  int sum = (n1 + n2 + n3);
  double prom = (sum / 3);
  print ('Su nombre completo es: $n $ap');
  print ('El promedio de los numeros ingresados es: $prom');
}