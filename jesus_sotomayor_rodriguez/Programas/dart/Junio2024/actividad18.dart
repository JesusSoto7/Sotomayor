import 'dart:io';
void main(){
  print('Ingrese su nombre');
  String nombre = stdin.readLineSync()!;
  String nombreInverso = '';
  for(int i = nombre.length - 1; i >= 0; i--){
    nombreInverso += nombre[i];
  }
  print('Su nombre invertido es: $nombreInverso');
}