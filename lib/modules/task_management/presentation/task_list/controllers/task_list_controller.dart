import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/modules/router/router_app.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/snack_bars_app/snack_bars_app.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/entities/task_entity.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/usecases/delete_task/task_management_usecase_delete_task.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/usecases/update_task/task_management_usecase_update_task.dart';
import 'package:get/get.dart';

import '../../../domain/usecases/get_tasks/task_management_usecase_get_tasks.dart';

part 'task_list_state.dart';

class TaskListController extends GetxController with StateMixin<TaskListState> {
  final TaskManagementUsecaseGetTasks _getTaskUsecase;
  final TaskManagementUsecaseDeleteTask _deleteTaskUsecase;
  final TaskManagementUsecaseUpdateTask _usecaseUpdateTaskUsecase;
  final RouterApp _router;

  TaskListController(this._getTaskUsecase, this._deleteTaskUsecase, this._usecaseUpdateTaskUsecase, this._router);

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  void change(TaskListState? newState, {RxStatus? status}) => super.change(newState, status: RxStatus.success());

  @override
  void onInit() {
    super.onInit();
    change(TaskListStarted());
    getTasks();
  }

  getTasks() async {
    change(TaskListLoading());
    final response = await _getTaskUsecase();
    response.fold((l) => change(InitialGetError(msg: l.msg)), (r) {
      if (r.isEmpty) return change(TaskListEmpty());
      return change(TaskListLoaded(tasks: r));
    });
  }

  onTapChangeTask(TaskEntity task) async {
    final currentTask = state as TaskListLoaded;
    final tasks = currentTask.tasks;
    final index = tasks.indexOf(task);
    if (index < 0) return;
    final newTask = task.copyWith(hasCompleted: !task.hasCompleted);
    final response = await _usecaseUpdateTaskUsecase(newTask: newTask, oldTask: task);
    response.fold((l) => SnackBarsApp.error(l.msg), (r) {
      tasks[index] = newTask;
      change(currentTask.copyWith(tasks: tasks));
    });
  }

  onTapDeleteTask(TaskEntity task, {required Function(Function(int) removeFromList) deleteAnimation}) async {
    final response = await _deleteTaskUsecase(id: task.id);
    response.fold((l) => SnackBarsApp.error(l.msg), (r) {
      deleteAnimation(_handleRemove);
    });
  }

  _handleRemove(int index) {
    final currentTask = state as TaskListLoaded;
    currentTask.tasks.removeAt(index);
    if (currentTask.tasks.isEmpty) return change(TaskListEmpty());
  }

  Future<void> onTapAddTask() async {
    await _router.pushNamed("/add_task");
  }

  onTapUpdateTask(TaskEntity p1) async {
    await _router.pushNamed("/details_task", args: p1);
  }
}
