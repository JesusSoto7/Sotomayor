import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: [Text('Home'), Text('Explore'), Text('profile')][2],
        bottomNavigationBar: Navegacion(item: 2),
      ),
    );
  }
}

class Navegacion extends StatelessWidget {
  final int item;
  const Navegacion({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      selectedIndex: item,
      onDestinationSelected: (int index) {
        // Aqui el codigo que dispara la accion
        .add(PresionoMenu(index: index));
      },
    );
  }
}
