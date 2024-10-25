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

//void main() async {
  //Aqui falta agg q el usuario agg el id con un imput
  //int num = 1;
  //var url = Uri.https('jsonplaceholder.typicode.com', 'users/${num}');

  //var response = await http.get(url);

  //print('Response status: ${response.statusCode}');

  //if (response.statusCode == 200) {
    //User user = new User(response.body);
    
    //esto es un ejemplo de como se imprime un atributo en especifico
    // de una clase instanciada en user [print(user.address?.geo?.lat);]
    
    //Modifique toString para que imprimiera todo de una
   // print(user);
  //}
//}