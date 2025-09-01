import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:practica_de_logica/models/task.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  
 Future<void> loadTasks() async {
    emit(TaskLoading());

    final url = Uri.parse(
        'https://raw.githubusercontent.com/JesusSoto7/Sotomayor/refs/heads/main/db2.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final taskList = TaskList.fromJson(data);

      emit(TaskSuccess(taskList.items));
    } else {
      emit(TaskFailure());
    }
  }
}
