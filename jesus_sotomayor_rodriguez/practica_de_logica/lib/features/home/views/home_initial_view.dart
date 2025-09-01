import 'package:flutter/material.dart';
import 'package:practica_de_logica/features/tasks/views/task_initial_view.dart';
import 'package:practica_de_logica/features/user/views/user_initial_view.dart';

class HomeInitialView extends StatelessWidget {
  const HomeInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              color: const Color.fromARGB(255, 220, 221, 221),

              child: UserInitialView()
            ),
            SizedBox(height: 20),
            Text(
              'Tareas',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Actualizar"),
            ),

            SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 136, 201, 123),

              child: TaskInitialView()
            ),
          ],
        ),
      ),
    );
  }
}
