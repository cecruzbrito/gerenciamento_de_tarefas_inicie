import 'package:dartz/dartz.dart';

import '../../../../../core/errors/errors.dart';
import '../../entities/task_entity.dart';
import '../../repository/task_management_repository.dart';
import 'task_management_usecase_update_task.dart';

class TaskManagementUsecaseUpdateTaskImp implements TaskManagementUsecaseUpdateTask {
  final TaskManagementRepository _repository;

  TaskManagementUsecaseUpdateTaskImp(this._repository);

  @override
  Future<Either<Failure, TaskEntity>> call({required TaskEntity oldTask, required TaskEntity newTask}) async =>
      await _repository.updateTask(oldTask: oldTask, newTask: newTask);
}
