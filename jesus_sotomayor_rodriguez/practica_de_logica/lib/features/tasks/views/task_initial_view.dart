import 'package:flutter/material.dart';

class TaskInitialView extends StatelessWidget {
  const TaskInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Comprar"),
                  Text("Ir al ara")
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Transito"),
                  Text("Tramite")
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(""),
                  Text("")
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}