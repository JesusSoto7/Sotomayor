import 'dart:io';
void main() {
  List<int> dineroAcumulado = [];
  int total = 0;

  while (total < 50000) {
    print('Ingrese valor a abonar:');
    int dinero = int.parse(stdin.readLineSync()!);

    dineroAcumulado.add(dinero);
    total += dinero;

    print('Acumulado hasta ahora: ${total}');
  }
  
  print('Total acumulado: ${total}');
}
