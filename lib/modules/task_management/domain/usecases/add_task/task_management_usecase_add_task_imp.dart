import 'package:dartz/dartz.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/repository/task_management_repository.dart';

import '../../../../../core/errors/errors.dart';
import '../../entities/task_entity.dart';
import 'task_management_usecase_add_task.dart';

class TaskManagementUsecaseAddTaskImp extends TaskManagementUsecaseAddTask {
  final TaskManagementRepository _repository;

  TaskManagementUsecaseAddTaskImp(this._repository);

  @override
  Future<Either<Failure, TaskEntity>> call({
    required String title,
    required String description,
    required bool hasCompleted,
  }) async => await _repository.addTask(title: title, description: description, hasCompleted: hasCompleted);
}
