// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_or_update_task_controller.dart';

abstract class AddOrUpdateTaskState {}

class AddOrUpdateTaskStarted extends AddOrUpdateTaskState {}

class AddOrUpdateStateLoading extends AddOrUpdateTaskState {}

class AddOrUpdateTaskInput extends AddOrUpdateTaskState {
  final TaskEntity? task;
  final bool hasCompleted;

  bool get hasAdd => task == null;
  bool get hasUpdate => task != null;
  AddOrUpdateTaskInput({required this.hasCompleted, this.task});

  AddOrUpdateTaskInput copyWith({TaskEntity? task, bool? hasCompleted}) {
    return AddOrUpdateTaskInput(task: task ?? this.task, hasCompleted: hasCompleted ?? this.hasCompleted);
  }
}

class AddTaskSuccess extends AddOrUpdateTaskState {
  final String msg;
  final TaskEntity taskCreated;
  AddTaskSuccess({required this.msg, required this.taskCreated});
}

class UpdateTaskSuccess extends AddOrUpdateTaskState {
  final String msg;
  final TaskEntity taskUpdated;

  UpdateTaskSuccess({required this.msg, required this.taskUpdated});
}
