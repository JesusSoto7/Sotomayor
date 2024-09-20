import 'dart:io';
void main(){
  print('ingrese un número');
  int num1 = int.parse(stdin.readLineSync()!);

  print('ingrese un segundo número');
  int num2 = int.parse(stdin.readLineSync()!);

  int suma = num1 + num2;
  int resta = num1 - num2;
  int mult = num1 * num2;
  double div = num1 / num2;

  print('El resultado de la suma de los números es: $suma');
  print('El resultado de la resta de los números es: $resta');
  print('El resultado de la multiplicacion de los números es: $mult');
  print('El resultado de la division de los números es: $div');
}