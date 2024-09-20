package ADSO2928707.portafolio_aprendices.jesus_sotomayor_rodriguez.Programas.java;
import java.util.Scanner;
public class Practica {
    public static void main(String[]args){
        System.out.println("Ingrese el numero de estudiantes");
        Scanner scanner = new Scanner(System.in);
        int num = scanner.nextInt();

        for (int estu = 1; estu <= num; estu++){
            
            scanner.nextLine();
            System.out.println("Ingrese el nombre del estudiante");
            String name = scanner.nextLine();

            System.out.println("Ingrese el apellido del estudiante");
            String ape = scanner.nextLine();

            System.out.println("Ingrese la primera nota");
            int nota1 = scanner.nextInt();

            System.out.println("Ingrese la segunda nota");
            int nota2 = scanner.nextInt();

            System.out.println("Ingrese la tercera nota");
            int nota3 = scanner.nextInt();

            double prom = (nota1 + nota2 + nota3)/3.0;
            if (prom >=6) {
                System.out.println(name+" "+ape+" tiene un promedio de: "+prom+" - Aprobo");
            }else{
                System.out.println(name+" "+ape+" tiene un promedio de: "+prom+" - No aprobo");
            }
        }
        scanner.close();
    }
}