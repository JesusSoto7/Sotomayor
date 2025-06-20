part of 'menu_bloc.dart';

abstract class MenuEvent {}

class PresionoMenu extends MenuEvent {
  final int index;

  PresionoMenu({required this.index});
}
