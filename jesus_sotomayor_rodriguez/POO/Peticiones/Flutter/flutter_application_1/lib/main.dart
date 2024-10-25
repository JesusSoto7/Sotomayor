import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'userclass.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  MyAppful createState() => MyAppful();
}
class MyAppful extends State<MyApp> {
  final TextEditingController controldebarra = TextEditingController();
  int userId = 1;

  Future<User> fetchData(int id) async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/${id}');
  var response = await http.get(url);
  return User(response.body);
}

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PlaceHolder',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('User')),

          body: Column(
            children: [
              TextField(
                controller: controldebarra,
                decoration: InputDecoration(labelText: 'Ingresa Id' ),
                keyboardType: TextInputType.number,
              ),
              
              ElevatedButton(
                onPressed: () {
                  int idIngresado = int.tryParse(controldebarra.text) ?? 0;
                  if (idIngresado > 0) {
                    setState(() {
                      userId = idIngresado;
                    });
                  }
                },
                child: Text('Buscar USER'),
              ),
              FutureBuilder<User> (
                future: fetchData(userId!),
                builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    User user = snapshot.data!;
                    return Center(
                      child: Column(
                        children: [
                          Text('ID: ${user.id!}'),
                          Text('Name: ${user.name!}'),
                          Text('Username: ${user.username!}'),
                          Text('Email: ${user.email!}'),
                          Text('Address: ${user.address!.city!}'),
                          Text('Geo: Lat ${user.address!.geo!.lat!}'),
                          Text('Phone: ${user.phone!}'),
                          Text('Website: ${user.website!}'),
                          Text('Company: ${user.company!.name!}'),
                          Icon(
                            Icons.favorite,
                            color: Colors.green,
                            size: 24.0,
                          ),
                        ],
                      ),
                    );
                  } else {
                  return Center(child: Text('No data available'));
                  }
                },
              ),
          ]),
        ),
    );
  }
}

