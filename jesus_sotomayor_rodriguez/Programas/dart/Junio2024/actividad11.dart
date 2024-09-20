import 'dart:io';
void main(){
  print ('Ingrese el numero de autos');
  int aut = int.parse(stdin.readLineSync()!);

  for (int cant = 1; cant <= aut; cant++){
    print ('Ingrese el digito de la placa');
    int dig = int.parse(stdin.readLineSync()!); 

    if (1<= dig && dig <= 2){
      print ('La calcomanía es amarilla');

    }else if(3<= dig && dig <=4){
      print ('La calcomanía es roja');

    }else if(5<= dig && dig <=6){
      print ('La calcomanía es verde');

    }else if (7<= dig && dig <=8){
      print ('La calcomanía es azul');

    }else if (dig <= 9){
      print ('La calcomanía es morada');

    }else{
      print ('Error. Ingreso más de un dígito');
    }
  }  
}