part of 'inicio_bloc.dart';

@immutable
sealed class InicioEvent {}

class PressedIngresar extends InicioEvent {
  final String nombre;
  final String cedula;

  PressedIngresar({required this.nombre, required this.cedula});
}

class ResetInicio extends InicioEvent {}
