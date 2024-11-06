import 'package:flutter/material.dart';
import '../models/userclass.dart';

class Infouser extends StatelessWidget {
  final User user;

  Infouser({required this.user});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0), //Margen alrededor del contenido para que no quede pegado a los bordes de la pantalla
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //Alineación a la izquierda, para la derecha se termina con .end
          children: [
            //Color de los textos 
            Text(
              'ID: ${user.id!}', 
              style: TextStyle(color: Colors.white, fontSize: 18), //Aumenté el tamaño del texto a (18) y cambié el color
            ),
            SizedBox(height: 8), //Espacio entre lineas de texto usando SizedBox

            Text(
              'Name: ${user.name!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Username: ${user.username!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Email: ${user.email!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Ciudad: ${user.address!.city!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Lat: ${user.address!.geo!.lat!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Lng: ${user.address!.geo!.lng!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Phone: ${user.phone!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Website: ${user.website!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(
              'Company: ${user.company!.name!}',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}