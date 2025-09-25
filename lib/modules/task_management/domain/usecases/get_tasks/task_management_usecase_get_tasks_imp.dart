import 'package:dartz/dartz.dart';

import '../../../../../core/domain/errors/errors.dart';
import '../../entities/task_entity.dart';
import '../../repository/task_management_repository.dart';
import 'task_management_usecase_get_tasks.dart';

class TaskManagementUsecaseGetTasksImp implements TaskManagementUsecaseGetTasks {
  final TaskManagementRepository _repository;

  TaskManagementUsecaseGetTasksImp(this._repository);
  @override
  Future<Either<Failure, List<TaskEntity>>> call() async => await _repository.getTasks();
}
