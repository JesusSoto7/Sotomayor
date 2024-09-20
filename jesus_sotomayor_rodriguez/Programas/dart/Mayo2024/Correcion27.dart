import 'dart:io';
void main(){
  print ('Ingrese el valor');
  int a = int.parse(stdin.readLineSync()!);

  if( a <= 10 ){
    double desc1 = (a * 20)/100;
    double resul1 = a - desc1;
    print ('Se le aplicó un descuento del 20% = $resul1');
  }else{
    if( a <=100 ){
      double desc2 = (a * 10)/100;
      double resul2 = a - desc2;
      print ('Se le aplicó un descuento del 10% = $resul2');
    }else{
      if( a <= 1000 ){
        double desc3 = (a * 5)/100;
        double resul3 = a - desc3;
        print ('Se le aplicó un descuento del 5% = $resul3');
      }else{
        double desc4 = (a * 1)/100;
        double resul4 = a - desc4;
        print ('Se le aplicó un descuento del 1% = $resul4');
      }
    }
  }
}