package ADSO2928707.portafolio_aprendices.jesus_sotomayor_rodriguez.Programas.java;
import java.util.Scanner;
public class actividad2 {
    public static void main(String[]args) {
        System.out.println("Ingrese el primer numero");
        Scanner scanner = new Scanner(System.in);
        int num1 = scanner.nextInt();

        System.out.println("Ingrese el segundo numero");
        int num2 = scanner.nextInt();
        scanner.nextLine();

        System.out.println("Seleccione una operación (+, -, *, /):");
        String operation = scanner.nextLine();

        double resul = 0;
        scanner.close();
        
        switch (operation){
            case "+":
                resul = num1 + num2;
                break;
            case "-":
                resul = num1 - num2;
                break;
            case "*":
                resul = num1 * num2;
                break;
            case "/":
                if (num2 == 0) {
                    System.out.println("Error. No se puede dividir por cero");
                    return;
                }else{
                    resul =(double)num1 / num2;
                }
                break;
        }
        System.out.println("Resultado: "+resul);
    }
}

