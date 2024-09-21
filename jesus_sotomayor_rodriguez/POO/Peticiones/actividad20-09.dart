import 'package:http/http.dart' as http;
import 'dart:convert';

class Agua{
    int? exp;

    Agua(String jsonString){
        Map<String, dynamic> map = jsonDecode(jsonString);
        this.exp = map['ability'];
    }
}

void main() async {
  var url = Uri.https('pokeapi.co', 'api/v2/pokemon/greninja');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  Agua agua = Agua(response.body);
  print(agua.exp);
}