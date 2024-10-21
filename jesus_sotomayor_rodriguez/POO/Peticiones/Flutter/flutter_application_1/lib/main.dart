import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() {
  runApp(MyApp());
}

Future<User> fetchData(int id) async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/${id}');
  var response = await http.get(url);
  return User(response.body);
}

class MyApp extends StatefulWidget{
  MyAppful createState() => MyAppful();
}

class MyAppful extends State<MyApp> {
  final TextEditingController controldebarra = TextEditingController();
  int userId = 1;

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
                          Text('ID: ${user.id}'),
                          Text('Name: ${user.name}'),
                          Text('Username: ${user.username}'),
                          Text('Email: ${user.email}'),
                          Text('Address: ${user.address!.city!}'),
                          Text('Geo: Lat ${user.address!.geo!.lat!}'),
                          Text('Phone: ${user.phone}'),
                          Text('Website: ${user.website}'),
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

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  User(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.id = map['id'];
    this.name = map['name'];
    this.username = map['username'];
    this.email = map['email'];

    Map addr = map['address'];
    this.address = Address(addr);

    this.phone = map['phone'];
    this.website = map['website'];

    Map com = map['company'];
    this.company = Company(com);
  }

  @override
  String toString() {
    return "ID: ${this.id}, "
        "NAME: ${this.name}, "
        "USERNAME: ${this.username}, "
        "EMAIL: ${this.email}, "
        "${this.address}, "
        "PHONE: ${this.phone}, "
        "WEBSITE: ${this.website}, "
        "${this.company}.";
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company) {
    this.name = company['name'];
    this.catchPhrase = company['catchPhrase'];
    this.bs = company['bs'];
  }

  @override
  String toString() {
    return "NAMECOMPANY: ${this.name}, "
        "CATCHPHRASE: ${this.catchPhrase}, "
        "BS: ${this.bs}";
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address) {
    this.street = address['street'];
    this.suite = address['suite'];
    this.city = address['city'];
    this.zipcode = address['zipcode'];

    Map g = address['geo'];
    this.geo = Geo(g);
  }

  @override
  String toString() {
    return "STREET: ${this.street}, "
        "SUITE: ${this.suite}, "
        "CITY: ${this.city}, "
        "ZIPCODE: ${this.zipcode}, "
        "${this.geo}";
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map geo) {
    this.lat = geo['lat'];
    this.lng = geo['lng'];
  }

  @override
  String toString() {
    return "LAT:${this.lat}, "
        "LNG:${this.lng}";
  }
}