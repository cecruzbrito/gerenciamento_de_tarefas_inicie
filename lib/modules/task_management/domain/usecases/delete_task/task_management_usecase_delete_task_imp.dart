import 'package:dartz/dartz.dart';

import '../../../../../core/errors/errors.dart';
import '../../repository/task_management_repository.dart';
import 'task_management_usecase_delete_task.dart';

class TaskManagementUsecaseDeleteTaskImp implements TaskManagementUsecaseDeleteTask {
  final TaskManagementRepository _repository;

  TaskManagementUsecaseDeleteTaskImp(this._repository);

  @override
  Future<Either<Failure, void>> call({required int id}) async => await _repository.deleteTask(id: id);
}
