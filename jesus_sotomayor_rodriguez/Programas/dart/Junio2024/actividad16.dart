import 'dart:io';
void main() {
  print('Ingrese el primer número:');
  double? num1 = double.tryParse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  double? num2 = double.tryParse(stdin.readLineSync()!);
  
  if (num1 == null || num2 == null) {
    print('Entrada inválida. Por favor ingrese números válidos.');
    return;
  }
  
  print('Seleccione una operación (+, -, *, /):');
  String? operation = stdin.readLineSync();
  
  double? result;
  
  switch(operation){
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if(num2 == 0){
        print('Error: No se puede dividir por cero.');
        return;
      }else{
        result = num1 / num2;
      }
      break;
    default:
      print('Operación inválida.');
      return;
  }
  print('Resultado: $result');
}