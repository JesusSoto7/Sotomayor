part of 'inicio_bloc.dart';

@immutable
sealed class InicioState {}

class InicioInitial extends InicioState {}

class InicioLoading extends InicioState {}

class InicioFailure extends InicioState {}

class InicioSuccess extends InicioState {
  final Car car;
  InicioSuccess({required this.car});
}
