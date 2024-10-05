//Importar la libreria para usar http
import 'package:http/http.dart' as http;
//Importar la libreria para convertir los json a map
import 'dart:convert';


class Agua {
  int? exp;

  Agua(String jsonString) {
    //Convierte el json string a map
    Map<String, dynamic> map = jsonDecode(jsonString);

    //Asigno un valor usando map que en este caso seleccione una 
    //variable con valor de numero entero sacado de pokeApi
    this.exp = map['base_experience'];
  }
}

void main() async {
  //importando la pagina de apis y asignandola a una variable
  var url = Uri.https('pokeapi.co', 'api/v2/pokemon/greninja');

  //Haciendo una peticion a la url q se guardo en la variables anterior. 
  //en este caso use get q es para pedir
  //await es para q el programa no avanze hasta q llege la inf solicitada
  var response = await http.get(url);

  //Imprime el el codigo de status para saber que error es o si todo esta funcionando bien
  print('Response status: ${response.statusCode}');

  //Instancio un objeto ya no utilizo new por que ya no es necesario
  Agua agua = Agua(response.body);

  //Imprimo el atributo de la clase agua q ya ah sido valorado por el constructor
  print(agua.exp);
}
