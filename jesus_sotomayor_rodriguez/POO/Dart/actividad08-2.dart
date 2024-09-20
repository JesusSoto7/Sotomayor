class Calculadora {
  double? num1;
  double? num2;
  String? operacion;

  Calculadora(double num1, double num2, String operacion) {
    this.num1 = num1;
    this.num2 = num2;
    this.operacion = operacion;
  }
  double suma() {
    return num1! + num2!;
  }

  double resta() {
    return num1! - num2!;
  }

  double multiplicacion() {
    return num1! * num2!;
  }

  double division() {
    return num1! / num2!;
  }

  void calcular() {
    if (operacion == "S") {
      print(suma());
    } else if (operacion == "R") {
      print(resta());
    } else if (operacion == "M") {
      print(multiplicacion());
    } else if (operacion == "D") {
      print(division());
    }
  }
}

void main() {
  Calculadora cal = new Calculadora(4, 3, "S");
  cal.calcular();
}
