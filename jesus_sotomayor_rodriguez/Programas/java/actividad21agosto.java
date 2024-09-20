package ADSO2928707.portafolio_aprendices.jesus_sotomayor_rodriguez.Programas.java;

public class actividad21agosto {
    public static void main(String[] args) {
        Particular car = new Particular(2000);
            car.ciudad = "Bogota";
            car.placa = "UVX897";
            car.color = "Morado";
            System.out.println("Particular: " +car.getInfo()+ "-" +car.placa+ "-" +car.color+ "-" +car.getRtm());

        Publico bus = new Publico(977);
            bus.empresa = "Cotrasol";
            bus.ciudad = "Barranquilla";
            bus.ruta = "Simon bolivar";
            System.out.println("Publico: "+bus.getInfo()+ "-" +bus.getCodigo());

    }
}

class Transporte{
  public String empresa;
  public String ciudad;
        
  public String getInfo(){
    return this.empresa+ "-" +this.ciudad;
  }
}

class Particular extends Transporte{
  public String placa;
  public String color;
  private int modelo;
  
  @Override
  public String getInfo(){
    return this.ciudad;
  }
  Particular (int m){
    this.modelo = m;
  }
  public int getRtm(){
    return this.modelo + 5;
  }

}

class Publico extends Transporte{
  private int ninterno;
  public String ruta;
  
  Publico (int n){
    this.ninterno = n;
  }
  public String getCodigo(){
    return this.ruta+ "-" +this.ninterno;
  }
}

