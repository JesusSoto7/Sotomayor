import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/car_service.dart';
import 'package:flutter_application_2/features/inicio/view/InitialView.dart';
import 'package:flutter_application_2/features/inicio/bloc/inicio_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InicioBloc(CarService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: InitialView(),
      ),
    );
  }
}
