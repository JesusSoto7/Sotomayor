part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskSuccess extends TaskState {
  final List<Task> task;
  TaskSuccess(this.task);
}

final class TaskFailure extends TaskState {}

final class TaskLoading extends TaskState {}