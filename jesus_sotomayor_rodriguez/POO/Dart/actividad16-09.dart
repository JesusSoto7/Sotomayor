import 'dart:convert';

class Colaborador{
    String? nombreCompleto;
    int? tipoColaborador;
    double? aporte;

    Colaborador(String jsonString){
        Map<String, dynamic> map = jsonDecode(jsonString);
        this.nombreCompleto = map['nombreCompleto'];
        this.tipoColaborador = map['tipoColaborador'];
        this.aporte = map['aporte'];
    }
}

void main(){

    String jsonS = '{"nombreCompleto": "JesusSotomayor", "tipoColaborador": 1, "aporte": 3000.5}';

    Colaborador colaborador = new Colaborador(jsonS);
    print(colaborador.nombreCompleto);
}