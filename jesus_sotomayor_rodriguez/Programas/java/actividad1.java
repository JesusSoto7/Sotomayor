package ADSO2928707.portafolio_aprendices.jesus_sotomayor_rodriguez.Programas.java;
import java.util.Scanner;
public class actividad1 {
    public static void main(String[]args) {
        System.out.println("Ingrese un número para ver su tabla de multiplicación: ");
        Scanner scanner = new Scanner(System.in);
        int num = scanner.nextInt();

        System.out.println("Tabla de multiplicar del " + num + ": ");

        for(int tabla = 1; tabla <= 10; tabla++) {
            System.out.println(num+" x "+tabla+" = "+(num * tabla));
        }
        scanner.close();
    }
}

