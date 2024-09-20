class Colaborador{

  String? _nombreCompleto;
  double _aporte = 0;
  int? _tipoColaborador;
  

  Colaborador(String nombre, double aporte, int tipo){
    this._nombreCompleto = nombre;
    this._aporte = aporte;
    this._tipoColaborador = tipo;
  }

  String getNombreCompleto() => _nombreCompleto!;
  

  int getTipo() => _tipoColaborador!;

  @override
  String toString(){
    return '{"Nombre": ${this._nombreCompleto}, "Aporte": ${this._aporte}, "tipo de colaborador": ${this._tipoColaborador}"}';
  }

  double getAporte() => this._aporte;

}