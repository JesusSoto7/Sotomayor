import 'dart:convert';
import 'package:http/http.dart' as http;
import 'car.dart';

class CarService {
  final String baseUrl =
      "https://raw.githubusercontent.com/JesusSoto7/Sotomayor/refs/heads/main/dbcar.json";

  Future<Car> fetchCar() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      return Car.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error al obtener usuario");
    }
  }
}
