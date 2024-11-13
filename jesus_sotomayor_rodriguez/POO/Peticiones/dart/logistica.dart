void main(){
  Logistics logistics =Mar();
  Transport transport = logistics.createTransport();
  transport.delivery();

}

abstract class Transport{
  void delivery();
}

class Truck implements Transport{

  @override
  void delivery() {
    print('El pedido va en Camion');
  }
}

class Ship implements Transport{

  @override
  void delivery() {
    print('EL pedido va en Barco');
  }
}

abstract class Logistics {
  Transport createTransport();
}

class Terrestre implements Logistics{
  @override
  Transport createTransport() {
    return Truck();
  }
}
class Mar implements Logistics{
  @override
  Transport createTransport() {
    return Ship();
  }
}