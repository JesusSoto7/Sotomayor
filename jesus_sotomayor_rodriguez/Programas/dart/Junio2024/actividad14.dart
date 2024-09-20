import 'dart:io';

void main() {
  stdout.write('Ingrese un número para ver su tabla de multiplicación: ');
  int? num = int.tryParse(stdin.readLineSync()??'');

  if(num == null){
    print('Por favor ingrese un número válido.');
  }else{
    print('Tabla de multiplicar del $num:');
    for(int tabla = 1; tabla <= 10; tabla++){
      print('$num x $tabla = ${num * tabla}');
    }
  }
}