class Telefono{
  String? marca;
  int? ram;
  int? rom;

  Telefono({this.marca});

  @override
  String toString(){
    String especificaciones = "$marca,$ram,$rom";
    return especificaciones;
  }

}
void main(){
  Telefono celular = new Telefono(marca: 'Samsung');
  print(celular.marca);
  celular.ram = 4;
  celular.rom = 128;
  
  print(celular);
}
