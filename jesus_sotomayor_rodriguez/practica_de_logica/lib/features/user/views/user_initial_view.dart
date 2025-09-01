import 'package:flutter/material.dart';

class UserInitialView extends StatelessWidget {
  const UserInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hola: Carlos", style: TextStyle(fontSize: 20)),
        Text("Contacto:", style: TextStyle(fontSize: 20)),
        Text("Saldo: 1200", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}