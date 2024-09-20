class Transporte {
  String? marca;
}

class Terrestre extends Transporte {
  int? llantas;
}

class Aereo extends Transporte {
  int? motores;
}

class Auto extends Terrestre {
  bool? aire;
}

class Moto extends Terrestre {
  int? cascos;
}

class Avion extends Aereo {
  static void manual() {
    print("Hola Manual");
  }
}

void main() {
  Auto carro = new Auto();
  carro.marca = "Ford";
  carro.llantas = 4;
  carro.aire = true;
  print("Auto, marca: ${carro.marca}, llantas: ${carro.llantas}, aire: ${carro.aire}");

  Moto moto = new Moto();
  moto.marca = "Ducati";
  moto.llantas = 2;
  moto.cascos = 1;
  print("Moto, marca: ${moto.marca}, llantas: ${moto.llantas}, cascos: ${moto.cascos}");

  Avion avion = new Avion();
  avion.marca = "ATR";
  avion.motores = 3;
  print("Avion, marca: ${avion.marca}, motores: ${avion.motores}");
  Avion.manual();
}
