class Telefono{
  String? marca;
  int? ram;
  int? rom;
}

class Pc{
  String? cpu;
  int? ram;
  int? almacenamiento;
}

class Camisa{
  int? talla;
  String? marca;
  String? color;
}

void main(){
  Telefono celular = new Telefono();
  celular.marca = 'Samsung';
  celular.ram = 4;
  celular.rom = 128;

  Pc computador = new Pc();
  computador.cpu = 'Ryzen 5 4600g';
  computador.ram = 16;
  computador.almacenamiento = 500;

  Camisa ropa = new Camisa();
  ropa.talla = 8;
  ropa.marca = 'H&M';
  ropa.color = 'Blanco';
}