import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import '../models/userclass.dart';
import '../widgets/infouser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppful createState() => MyAppful();
}

class MyAppful extends State<MyApp> {
  final TextEditingController controldebarra = TextEditingController();
  int? userId;

  Future<User> fetchData(int id) async {
    var url = Uri.https('jsonplaceholder.typicode.com', 'users/$id');
    var response = await http.get(url);
     if (response.statusCode == 200) {
      return User(response.body);
    }else{
      return throw(response.statusCode);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlaceHolder',
      debugShowCheckedModeBanner: false, //esto quita la marca de agua
      home: Scaffold(
        backgroundColor: Colors.grey[900], //color de fondo
        appBar: AppBar(title: Text('User', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepPurple, // Color para el AppBar
        ),
        
        body: Column(children: [
          SizedBox(height: 20), // espacio entre widgets

          TextField(
            controller: controldebarra,
            decoration: InputDecoration(
              labelText: 'Ingresa Id',
              labelStyle: TextStyle(color: Colors.white70),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white38, width: 1.0),
              ),
              fillColor: Colors.white24,
              filled: true,
            ),
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              int idIngresado = int.tryParse(controldebarra.text) ?? 0;
              if (idIngresado > 0) {
                setState(() {
                  userId = idIngresado;
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple, // Fondo morado del botón
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            ),
            child: Text(
              'Buscar USER',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),

          if(userId != null) // verifica si el id ingresado no es null
          FutureBuilder<User>(
            future: fetchData(userId!),
            builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text(
                  'Error: ${snapshot.error}',
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),);
              } else if (snapshot.hasData) {
                User user = snapshot.data!;
                return Infouser(user: user);
              }else{
                return Center(child: Text('No se encontraron datos'),);
              }
            },
          ),
        ]),
      ),
    );
  }
}
