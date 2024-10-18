import 'dart:io';
void main(){
  print ('Ingrese el número');
  int num = int.parse(stdin.readLineSync()!);

  if(num >0){
    print ('El número $num es positivo');
  }else{
    if(num <0){
      print ('El número $num es negativo');
    }else{
      print ('El número ingresado es cero');
    }
  }
}