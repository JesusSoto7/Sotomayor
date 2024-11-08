void main(){
  Logistica donde =Terrestre();
  Transport que = donde.createTransport();
  que.ruta();

}

abstract class Transport{
  void ruta();
}

class Camion implements Transport{

  @override
  void ruta() {
    print('Camion');
  }
}

class Barco implements Transport{

  @override
  void ruta() {
    print('Barco');
  }
}

abstract class Logistica {
  Transport createTransport();
}

class Terrestre implements Logistica{
  @override
  Transport createTransport() {
    return Camion();
  }
}
class Mar implements Logistica{
  @override
  Transport createTransport() {
    return Barco();
  }
}