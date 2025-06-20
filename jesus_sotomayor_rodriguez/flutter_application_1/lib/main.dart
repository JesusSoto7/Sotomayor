import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Widget> pages = [HomeView(), ProductosView(), PerfilView()];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        // ✅ Aquí se provee el BLoC a todo el árbol
        create: (_) => MenuBloc(), // 👉 lo separamos para que esté más limpio
        child: Scaffold(
          body: BlocBuilder<MenuBloc, MenuState>(
            builder: (context, state) {
              return pages[state.index]; // ✅ muestra la vista correcta
            },
          ),
          bottomNavigationBar: BlocBuilder<MenuBloc, MenuState>(
            builder: (context, state) {
              return BottomNavigationBar(
                currentIndex: state.index,
                onTap: (i) =>
                    context.read<MenuBloc>().add(PresionoMenu(index: i)),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    label: 'Productos',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Perfil',
                  ),
                ],
              );
            },
          ),
        ),

        // bottomNavigationBar: NavigationBar(
        //   destinations: [
        //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        //     NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
        //     NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        //   ],
        //   selectedIndex: 0,
        //   onDestinationSelected: (int index) {
        //     // Aqui el codigo que dispara la accion
        //     .add(PresionoMenu(index: index));
        //   },
        // ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Text('INICIOOO'));
}

class ProductosView extends StatelessWidget {
  const ProductosView({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Text('Productos'));
}

class PerfilView extends StatelessWidget {
  const PerfilView({super.key});

  @override
  Widget build(BuildContext context) => Center(child: Text('Perfil'));
}
