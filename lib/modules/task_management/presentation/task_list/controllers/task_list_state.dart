// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_list_controller.dart';

abstract class TaskListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TaskListStarted extends TaskListState {}

class TaskListLoading extends TaskListState {}

class TaskListEmpty extends TaskListState {
  final String msg = "Comece agora adicionando a primeira tarefa";
  @override
  List<Object?> get props => [msg];
}

class InitialGetError extends TaskListState {
  final String msg;
  InitialGetError({required this.msg});
  @override
  List<Object?> get props => [msg];
}

class TaskListLoaded extends TaskListState {
  final List<TaskEntity> tasks;
  TaskListLoaded({required this.tasks});

  @override
  List<Object?> get props => [tasks];

  TaskListLoaded copyWith({List<TaskEntity>? tasks}) {
    return TaskListLoaded(tasks: tasks ?? this.tasks);
  }
}
