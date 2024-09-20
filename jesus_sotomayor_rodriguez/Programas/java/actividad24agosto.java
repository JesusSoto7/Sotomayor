package ADSO2928707.portafolio_aprendices.jesus_sotomayor_rodriguez.Programas.java;

import java.util.ArrayList;
import java.util.List;
public class actividad24agosto {
    public static void main(String[] args) {
        Tienda tienda = new Tienda();

        Videojuego juego1 = new Videojuego("Super Mario", "Plataforma", "Nintendo Switch", 50.0);
        Videojuego juego2 = new Videojuego("The Witcher 3", "RPG", "PS4", 40.0);

        Cliente cliente1 = new Cliente("Manuel Rodriguez", 1);
        Cliente cliente2 = new Cliente("Ana Gómez", 2);

        tienda.agregarVideojuego(juego1);
        tienda.agregarVideojuego(juego2);

        tienda.registrarCliente(cliente1);
        tienda.registrarCliente(cliente2);

        tienda.mostrarVideojuegosDisponibles();

        tienda.alquilarVideojuego(cliente1, juego1);
        tienda.alquilarVideojuego(cliente2, juego2);

        tienda.mostrarVideojuegosDisponibles();

        cliente1.mostrarVideojuegosAlquilados();
        cliente2.mostrarVideojuegosAlquilados();

        tienda.devolverVideojuego(cliente1, juego1);

        tienda.mostrarVideojuegosDisponibles();
    }
}

class Videojuego {
    private String titulo;
    private String genero;
    private String consola;
    private double precio;
    private boolean disponible;

    public Videojuego(String titulo, String genero, String consola, double precio) {
        this.titulo = titulo;
        this.genero = genero;
        this.consola = consola;
        this.precio = precio;
        this.disponible = true;
    }

    public boolean estaDisponible() {
        return disponible;
    }

    public void alquilar() {
        if (disponible) {
            disponible = false;
            System.out.println("El videojuego " +titulo+ " ha sido alquilado.");
        } else {
            System.out.println("El videojuego " +titulo+ " no está disponible.");
        }
    }

    public void devolver() {
        disponible = true;
        System.out.println("El videojuego " + titulo + " ha sido devuelto.");
    }

    public void mostrarInfo() {
        System.out.println("Título: " +titulo+ ", Género: " +genero+ ", Consola: " +consola+ ", Precio: " +precio+ ", Disponible: " +disponible);
    }

    public String getTitulo() {
        return titulo;
    }
}

class Cliente {
    private String nombre;
    public int idCliente;
    private List<Videojuego> videojuegosAlquilados;

    public Cliente(String nombre, int idCliente) {
        this.nombre = nombre;
        this.idCliente = idCliente;
        this.videojuegosAlquilados = new ArrayList<>();
    }

    public void alquilarVideojuego(Videojuego juego) {
        if (juego.estaDisponible()) {
            juego.alquilar();
            videojuegosAlquilados.add(juego);
            System.out.println(nombre + " ha alquilado " +juego.getTitulo() + ".");
        } else {
            System.out.println("El videojuego " +juego.getTitulo()+ " no está disponible para alquilar.");
        }
    }

    public void devolverVideojuego(Videojuego juego) {
        if (videojuegosAlquilados.contains(juego)) {
            juego.devolver();
            videojuegosAlquilados.remove(juego);
            System.out.println(nombre+ " ha devuelto " +juego.getTitulo()+ ".");
        } else {
            System.out.println(nombre+ " no tiene alquilado " +juego.getTitulo()+ ".");
        }
    }

    public void mostrarVideojuegosAlquilados() {
        System.out.println("Videojuegos alquilados por " +nombre+ ":");
        for (Videojuego juego : videojuegosAlquilados) {
            System.out.println("- " +juego.getTitulo());
        }
    }

    public String getNombre() {
        return nombre;
    }
}

class Tienda {
    private List<Videojuego> inventario;
    private List<Cliente> clientes;

    public Tienda() {
        this.inventario = new ArrayList<>();
        this.clientes = new ArrayList<>();
    }

    public void agregarVideojuego(Videojuego juego) {
        inventario.add(juego);
        System.out.println("El videojuego " +juego.getTitulo()+ " ha sido agregado al inventario.");
    }

    public void registrarCliente(Cliente cliente) {
        clientes.add(cliente);
        System.out.println("El cliente " +cliente.getNombre()+ " ha sido registrado.");
    }

    public void alquilarVideojuego(Cliente cliente, Videojuego juego) {
        if (inventario.contains(juego)) {
            cliente.alquilarVideojuego(juego);
        } else {
            System.out.println("El videojuego " +juego.getTitulo()+ " no está en el inventario.");
        }
    }

    public void devolverVideojuego(Cliente cliente, Videojuego juego) {
        if (inventario.contains(juego)) {
            cliente.devolverVideojuego(juego);
        } else {
            System.out.println("El videojuego " +juego.getTitulo()+ " no pertenece a esta tienda.");
        }
    }

    public void mostrarVideojuegosDisponibles() {
        System.out.println("Videojuegos disponibles en la tienda:");
        for (Videojuego juego : inventario) {
            if (juego.estaDisponible()) {
                juego.mostrarInfo();
            }
        }
    }
}


