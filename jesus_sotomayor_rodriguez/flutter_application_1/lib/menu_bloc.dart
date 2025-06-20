import 'package:flutter_bloc/flutter_bloc.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(ActualizaMenu(index: 0)) {
    on<PresionoMenu>((event, emit) {
      emit(ActualizaMenu(index: event.index));
    });
  }
}
      // emit(ActualizaMenu(index: event.index));
      // if (index == 0) {
      //   emit(MenuHome());
      // }