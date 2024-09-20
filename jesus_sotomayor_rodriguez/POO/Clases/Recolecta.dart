import 'Colaborador.dart';

class Recolecta{
  List<Colaborador> _colaboradores = [];
  double? _montoRecaudar;
  double? _balance = 0;

  Recolecta(double monto,double balance){
    this._montoRecaudar = monto;
    this._balance = balance;
  }

  void addColaborador(Colaborador colaborador){
    _colaboradores.add (colaborador);
    _balance = _balance! + colaborador.getAporte();
    
  }

  bool finalizada() => _balance! >= _montoRecaudar!;
  
  List<Colaborador> generosos(){
    List<Colaborador> generosos = [];
    for(int i = 0; i < _colaboradores.length; i++ ){
      if(_colaboradores[i].getAporte() > 10000){
        generosos.add(_colaboradores[i]);
      }     
    }
    return generosos;
  }
  
  double recaudoGeneroso(){
    double total1 = 0;

    for (int i = 0; i < generosos().length; i++) {
    total1 += generosos()[i].getAporte();
    }
    return total1;
  }

  double promedioGeneroso() => recaudoGeneroso() / generosos().length;

   double recaudoPorTipo(int tipo) {
    double totaltipo = 0;

    for (int i = 0; i < _colaboradores.length; i++) {
      if (_colaboradores[i].getTipo() == tipo) {
        totaltipo = totaltipo + _colaboradores[i].getAporte();
      }
    }
    return totaltipo;
  }
  //EXTRAS
  double totalGeneral() {
      double totalgeneral = 0;
      for(int i = 0; i < _colaboradores.length; i++){
       totalgeneral = totalgeneral + _colaboradores[i].getAporte();
      }
    return totalgeneral;
  }

  double promedioGeneral() => _balance! / _colaboradores.length;

}