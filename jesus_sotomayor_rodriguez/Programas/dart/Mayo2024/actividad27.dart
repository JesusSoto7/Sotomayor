import 'dart:io';
void main(){
  print ('ingrese el valor');
  int a = int.parse(stdin.readLineSync()!);

  if (0<= a && a <=10){
    double desc1 = a * 0.20;
    print ('Se le aplicó un descuento de 20% = ${a - desc1}');

  } else if (11<= a && a <=100){
    double desc2 = a * 0.10;
    print ('Se le aplicó un descuento de 10% = ${a - desc2}');

  } else if (101<= a && a <=1000){
    double desc3 = a * 0.05;
    print ('Se le aplicó un descuento de 5% ${a - desc3}');

  } else if (a > 1000){
    double desc4 = a * 0.01;
    print ('Se le aplicó un descuento de 1% ${a - desc4}');
  }
}