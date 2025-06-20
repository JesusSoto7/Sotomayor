import 'package:flutter_bloc/flutter_bloc.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(ActualizaMenu()) {
    on<PresionoMenu>((event, emit) {
      // TODO: implement event handler
      emit(ActualizaMenu(index: event.index));
      if (index == 0) {
        emit(MenuHome());
      }
    });
  }
}
      // emit(ActualizaMenu(index: event.index));
      // if (index == 0) {
      //   emit(MenuHome());
      // }