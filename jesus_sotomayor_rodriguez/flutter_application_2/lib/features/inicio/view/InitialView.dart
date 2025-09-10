import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/failure.dart';
import 'package:flutter_application_2/core/loading.dart';
import 'package:flutter_application_2/features/car/view/infocar.dart';
import 'package:flutter_application_2/features/inicio/bloc/inicio_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialView extends StatelessWidget {
  InitialView({super.key});

  final _nombreCtrl = TextEditingController();
  final _cedulaCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Inicio"),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocConsumer<InicioBloc, InicioState>(
        listener: (context, state) {
          if (state is InicioSuccess) {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => InfoCar(car: state.car)));
          }
        },
        builder: (context, state) {
          if (state is InicioInitial) {
            return _formContent(context);
          } else if (state is InicioLoading) {
            return Loading();
          } else if (state is InicioFailure) {
            return Failure();
          } else {
            // Si por alguna razón llega otro estado, mostramos el form
            return _formContent(context);
          }
        },
      ),
    );
  }

  /// 👉 Método privado con el formulario
  Widget _formContent(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Bienvenido",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _nombreCtrl,
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _cedulaCtrl,
                  decoration: InputDecoration(
                    labelText: "Cédula",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      context.read<InicioBloc>().add(
                        PressedIngresar(
                          nombre: _nombreCtrl.text,
                          cedula: _cedulaCtrl.text,
                        ),
                      );
                    },
                    child: const Text(
                      "Ingresar",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
