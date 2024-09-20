import 'dart:io';

void main() {
  print('Ingrese el número de aprendices:');
  int nume = int.parse(stdin.readLineSync()!);

  int con = 0;

  int con2 = 0;

  int acu = 0;

  int acu2 = 0;

  for (int n = 1; nume >= n; n++) {
    print('Ingrese la cantidad a abonar por el aprendiz $n:');
    int val = int.parse(stdin.readLineSync()!);
    
    if (val >= 5000) {
      con++;
      acu += val;
    } else {
      con2++;
      acu2 += val;
    }
  }
  int canti = acu + acu2;

  double prom = canti / nume;

  double prom2 = acu / con;

  double prom3 = acu2 / con2;

  print ('Cantidad total: $canti');

  print ('promedio general: $prom');

  print ('Cantidad de aprendices que donaron más o igual a 5000: $con');

  print ('Cantidad de aprendices que donaron menos de 5000: $con2');

  print ('Total de los que donaron más o igual a 5000: $acu');

  print ('Total de los que donaron menos de 5000: $acu2');

  print ('Promedio de los que donaron más o igual a 5000: $prom2');

  print ('Promedio de los que donaron menos de 5000: $prom3');
}