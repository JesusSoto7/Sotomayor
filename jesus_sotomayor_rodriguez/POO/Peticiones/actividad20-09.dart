import 'package:http/http.dart' as http;
import 'dart:convert';

class Agua{
    int? exp;

    Agua(Map jsonString){
        Map<String, dynamic> map = jsonDecode(jsonString);
        this.exp = map['base_experience:'];
    }
}

void main() async {
  var url = Uri.https('pokeapi.co', 'api/v2/pokemon/greninja');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  var greninja = '${response.body}';

  Map<String, dynamic> map = jsonDecode(greninja);
  print(map['forms'][0]['name']);
}