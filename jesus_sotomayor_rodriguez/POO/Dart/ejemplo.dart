class Telefono {
  String? marca;
  int? ram;

  Telefono({this.marca, this.ram});
  @override
  String toString() {
    return ("${this.marca},${this.ram}");
  }
}

class Atributos {
  String? _procesador;
  int? _rom;

  setProcesador(String proce) {
    this._procesador = proce;
  }

  getProcesador() {
    return _procesador;
  }

  setRom(int rom) {
    this._rom = rom;
  }

  getRom() {
    return _rom;
  }

  String toString() {
    return ('${getProcesador()}, ${getRom()}');
  }
}

void main() {
  Telefono tele = new Telefono(marca: 'jose', ram: 7);
  print(tele);

  Atributos atri = new Atributos();
  atri.setProcesador('SNAP');
  atri.setRom(7);
  print(atri);
}
