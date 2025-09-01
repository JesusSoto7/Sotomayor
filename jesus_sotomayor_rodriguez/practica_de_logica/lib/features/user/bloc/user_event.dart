part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class IniciarSesionEvent extends UserEvent{}