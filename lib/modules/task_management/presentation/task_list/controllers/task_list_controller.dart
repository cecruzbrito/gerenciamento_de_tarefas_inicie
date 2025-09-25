import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/modules/router/router_app.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/entities/task_entity.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/usecases/delete_task/task_management_usecase_delete_task.dart';
import 'package:get/get.dart';

import '../../../../../core/domain/errors/errors.dart';
import '../../../domain/usecases/get_tasks/task_management_usecase_get_tasks.dart';

part 'task_list_state.dart';

class TaskListController extends GetxController with StateMixin<TaskListState> {
  final TaskManagementUsecaseGetTasks _getTaskUsecase;
  final TaskManagementUsecaseDeleteTask _deleteTaskUsecase;
  final RouterApp _router;

  TaskListController(this._getTaskUsecase, this._deleteTaskUsecase, this._router);

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  void change(TaskListState? newState, {RxStatus? status}) => super.change(newState, status: RxStatus.success());

  @override
  void onInit() {
    super.onInit();
    change(TaskListStarted());
    _getTasks();
  }

  _getTasks() async {
    change(TaskListLoading());
    final response = await _getTaskUsecase();
    response.fold((l) => change(InitialGetError(msgError: l.msg)), (r) {
      if (r.isEmpty) return change(TaskListEmpty());
      return change(TaskListLoaded(tasks: r));
    });
  }
}
