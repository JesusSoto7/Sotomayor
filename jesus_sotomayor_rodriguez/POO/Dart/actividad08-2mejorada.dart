import "dart:io";
class Calculadora{
  double? num1;
  double? num2;
  String? operation;

  Calculadora(double n1,double n2,String op){
    this.num1 = n1;
    this.num2 = n2;
    this.operation = op;
  }

  double sumar(){
    double sum = this.num1! + this.num2!;
    return sum;
  }
  
  double restar(){
    double rest = this.num1! - this.num2!;
    return rest;
  }

  double multiplicacion(){
    double mult = this.num1! * this.num2!;
    return mult;
  }

  double division(){
    double divi = this.num1! / this.num2!;
    return divi;
  }

  void calcular(){
    if(this.operation == "+"){
      print(sumar());
    }else{
      if(this.operation == "-"){
        print(restar());
      }else{
        if(this.operation == "*"){
          print(multiplicacion());
        }else{
          if(this.operation == "/"){
            print(division());
          }
        }
      }
    }
  }
}
void main(){
  print("Ingrese el primer numero");
  double uno = double.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero");
  double dos = double.parse(stdin.readLineSync()!);

  print("Ingrese la operacion");
  String o = (stdin.readLineSync()!);
  
  Calculadora cal = new Calculadora(uno, dos, o);
  cal.calcular();
}
