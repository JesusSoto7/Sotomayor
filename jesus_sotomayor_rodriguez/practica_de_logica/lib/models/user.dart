class User {
  String email;
  String nombre;
  int saldo;

  User(this.email, this.nombre, this.saldo);

  User.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        nombre = json['nombre'],
        saldo = json['saldo'];
}
