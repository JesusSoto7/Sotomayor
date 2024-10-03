import 'package:http/http.dart' as http;
import 'dart:convert';

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
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map geo) {
    this.lat = geo['lat'];
    this.lng = geo['lng'];
  }
}

void main() async {
  //Aqui falta agg q el usuario agg el id con un imput
  //Ya despues lo ago
  int num = 1;
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/${num}');

  var response = await http.get(url);

  print('Response status: ${response.statusCode}');

  if (response.statusCode == 200) {
    User user = new User(response.body);
    //Falta imprimir el resto pero ya funciona de por si el codigo
    print(user.address?.city);
    print(user.name);
  }
}