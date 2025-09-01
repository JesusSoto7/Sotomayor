class Task {
  String titulo;
  String descripcion;

  Task(this.titulo, this.descripcion);

  Task.fromJson(Map<String, dynamic> json)
      : titulo = json['titulo'],
        descripcion = json['descripcion'];
}

class TaskList {
  List<Task> items;

  TaskList(this.items);

  TaskList.fromJson(Map<String, dynamic> json)
      : items = (json['items'] as List)
            .map((e) => Task.fromJson(e))
            .toList();
}
