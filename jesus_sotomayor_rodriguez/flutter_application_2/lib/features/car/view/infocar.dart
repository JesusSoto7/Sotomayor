import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/car.dart';

class InfoCar extends StatelessWidget {
  final Car car;

  const InfoCar({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Car")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://www.razaoautomovel.com/wp-content/uploads/2016/02/Pagani-Huayra-BC-7.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 155, 162, 168),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Modelo: ${car.modelo}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Marca: ${car.marca}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Color: ${car.color}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
