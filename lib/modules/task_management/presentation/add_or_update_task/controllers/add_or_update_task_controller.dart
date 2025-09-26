import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/modules/router/router_app.dart';
import '../../../../../core/widgets/snack_bars_app/snack_bars_app.dart';
import '../../../domain/entities/task_entity.dart';
import '../../../domain/usecases/add_task/task_management_usecase_add_task.dart';
import '../../../domain/usecases/update_task/task_management_usecase_update_task.dart';

part 'add_or_update_task_state.dart';

class AddTaskController extends GetxController with StateMixin<AddOrUpdateTaskState> {
  final TaskManagementUsecaseAddTask _addTaskUsecase;
  final TaskManagementUsecaseUpdateTask _updateTaskUsecase;
  final RouterApp _router;
  AddTaskController(this._addTaskUsecase, this._router, this._updateTaskUsecase);

  final formsKey = GlobalKey<FormState>();
  final ctrTitle = TextEditingController();
  final ctrDesc = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    change(AddOrUpdateTaskStarted());
  }

  @override
  void change(AddOrUpdateTaskState? newState, {RxStatus? status}) => super.change(newState, status: RxStatus.success());

  void onTapCompletedTask() {
    var currentState = state as AddOrUpdateTaskInput;
    change((currentState).copyWith(hasCompleted: !currentState.hasCompleted));
  }

  void initializing(TaskEntity? task) {
    ctrTitle.text = task?.title ?? "";
    ctrDesc.text = task?.description ?? "";
    change(AddOrUpdateTaskInput(hasCompleted: task?.hasCompleted ?? false, task: task));
  }

  Future<void> onTapAddTask() async {
    if (!(formsKey.currentState?.validate() ?? false)) return;
    final currentState = state as AddOrUpdateTaskInput;
    change(AddOrUpdateStateLoading());
    final response = await _addTaskUsecase(
      title: ctrTitle.text,
      hasCompleted: currentState.hasCompleted,
      description: ctrDesc.text,
    );
    response.fold((e) {
      change(currentState);
      SnackBarsApp.error(e.msg);
    }, (r) => change(AddTaskSuccess(msg: 'A tarefa "${r.title}" foi adicionada com sucesso', taskCreated: r)));
  }

  Future<void> onTapUpdateTask() async {
    if (!(formsKey.currentState?.validate() ?? false)) return;
    final currentState = state as AddOrUpdateTaskInput;
    change(AddOrUpdateStateLoading());
    final response = await _updateTaskUsecase(
      oldTask: currentState.task!,
      newTask: currentState.task!.copyWith(
        description: ctrDesc.text,
        hasCompleted: currentState.hasCompleted,
        title: ctrTitle.text,
      ),
    );
    response.fold((e) {
      change(currentState);
      SnackBarsApp.error(e.msg);
    }, (r) => change(UpdateTaskSuccess(msg: 'A tarefa "${r.title}" foi atualizada com sucesso', taskUpdated: r)));
  }

  void onTapNewTask() {
    ctrTitle.clear();
    ctrDesc.clear();
    change(AddOrUpdateTaskInput(hasCompleted: false));
  }

  void onTapHome() {
    TaskEntity? taskResult;
    if (state is AddTaskSuccess) {
      taskResult = (state as AddTaskSuccess).taskCreated;
    }
    if (state is UpdateTaskSuccess) {
      taskResult = (state as UpdateTaskSuccess).taskUpdated;
    }
    _router.pop(result: taskResult);
  }
}
