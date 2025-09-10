import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_application_2/data/car.dart';
import 'package:flutter_application_2/data/car_service.dart';

part 'inicio_event.dart';
part 'inicio_state.dart';

class InicioBloc extends Bloc<InicioEvent, InicioState> {
  final CarService carService;

  InicioBloc(this.carService) : super(InicioInitial()) {
    on<PressedIngresar>((event, emit) async {
      emit(InicioLoading());

      if (event.nombre.isNotEmpty && event.cedula.isNotEmpty) {
        final car = await carService.fetchCar(); // usa el servicio inyectado
        emit(InicioSuccess(car: car));
      } else {
        emit(InicioFailure());
      }
    });

    on<ResetInicio>((event, emit) {
      emit(InicioInitial());
    });
  }
}
