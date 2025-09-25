part of 'task_list_controller.dart';

abstract class TaskListState {}

class TaskListStarted extends TaskListState {}

class TaskListLoading extends TaskListState {}

class TaskListEmpty extends TaskListState {
  final String msg = "Sua lista está vazia";
}

class InitialGetError extends TaskListState {
  final String msgError;
  InitialGetError({required this.msgError});
}

class TaskListLoaded extends TaskListState {
  final List<TaskEntity> tasks;
  TaskListLoaded({required this.tasks});
}
