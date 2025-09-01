import 'package:flutter/material.dart';

class FailureView extends StatelessWidget {
  const FailureView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Ocurrió un error al cargar',
        style: TextStyle(fontSize: 16, color: Colors.red),
        textAlign: TextAlign.center,
      ),
    );
  }
}
