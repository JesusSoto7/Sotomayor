class Telefono{
  String? marca;
  int? ram;
  int? rom;

  Telefono(String m,){
    this.marca = m;
  }

}
void main(){
  Telefono celular = new Telefono("Samsung");
  print(celular.marca);
  celular.ram = 4;
  celular.rom = 128;
 
  print(celular.ram);
  print(celular.rom);
}