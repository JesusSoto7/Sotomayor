part of 'menu_bloc.dart';

abstract class MenuState {
  get index => null;
}

class ActualizaMenu extends MenuState {
  @override
  final int index;

  ActualizaMenu({required this.index});
}
