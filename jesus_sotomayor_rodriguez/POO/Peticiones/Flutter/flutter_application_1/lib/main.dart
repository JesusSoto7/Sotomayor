import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlaceHolder',
      home: Scaffold(
        appBar: AppBar(title: Text('User')),
        //backgroundColor: Colors.black,
        body: Column(
          children: [
            Text('id: 1}'),
            Text('name: Leanne Graham'),
            Text('username: Bret'),
            Text('email: Sincere@april.biz'),
            Text('address: {'
                'street: Kulas Light,'
                'suite: Apt. 556,'
                'city: Gwenborough,'
                'zipcode: 92998-3874,'
                'geo: {'
                'lat: -37.3159,'
                'lng: 81.1496}'
                '}'),
            Text('phone: 1-770-736-8031 x56442'),
            Text('website: hildegard.org'),
            Text('company: {'
                'name: Romaguera-Crona, '
                'catchPhrase: Muti-layered client-server neural-net, '
                'bs: harness real-time e-markets}'),
            ElevatedButton(onPressed: () {}, child: Text('Buscar USER')),
            Icon(
              Icons.favorite,
              color: Colors.green,
              size: 24.0,
            ),
            CircularProgressIndicator()
          ],
        ),
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
    this.address = new Address(addr);

    this.phone = map['phone'];
    this.website = map['website'];

    Map com = map['company'];
    this.company = new Company(com);
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
  String toString(){
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
    this.geo = new Geo(g);
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
  String toString(){
    return "LAT:${this.lat}, "
      "LNG:${this.lng}";
  }
}