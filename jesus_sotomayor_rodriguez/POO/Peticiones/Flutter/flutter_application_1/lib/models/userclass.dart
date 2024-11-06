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
    id = map['id'];
    name = map['name'];
    username = map['username'];
    email = map['email'];

    Map addr = map['address'];
    address = Address(addr);

    phone = map['phone'];
    website = map['website'];

    Map com = map['company'];
    company = Company(com);
  }

  @override
  String toString() {
    return "ID: $id, "
        "NAME: $name, "
        "USERNAME: $username, "
        "EMAIL: $email, "
        "$address, "
        "PHONE: $phone, "
        "WEBSITE: $website, "
        "$company.";
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company) {
    name = company['name'];
    catchPhrase = company['catchPhrase'];
    bs = company['bs'];
  }

  @override
  String toString() {
    return "NAMECOMPANY: $name, "
        "CATCHPHRASE: $catchPhrase, "
        "BS: $bs";
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address) {
    street = address['street'];
    suite = address['suite'];
    city = address['city'];
    zipcode = address['zipcode'];

    Map g = address['geo'];
    geo = Geo(g);
  }

  @override
  String toString() {
    return "STREET: $street, "
        "SUITE: $suite, "
        "CITY: $city, "
        "ZIPCODE: $zipcode, "
        "$geo";
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map geo) {
    lat = geo['lat'];
    lng = geo['lng'];
  }

  @override
  String toString() {
    return "LAT:$lat, "
        "LNG:$lng";
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