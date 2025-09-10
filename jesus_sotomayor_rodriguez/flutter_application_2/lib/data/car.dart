class Car {
  String modelo;
  String marca;
  String color;

  Car({required this.modelo, required this.marca, required this.color});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      modelo: json['modelo'],
      marca: json['marca'],
      color: json['color'],
    );
  }
}
