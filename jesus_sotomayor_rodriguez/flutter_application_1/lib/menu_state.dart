part of 'menu_bloc.dart';

abstract class MenuState {}

//class MenuHome extends MenuState {}

class ActualizaMenu extends MenuState {
  final int index;

  ActualizaMenu({required this.index});
}
