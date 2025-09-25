import 'package:dartz/dartz.dart';

import '../../../../../core/domain/errors/errors.dart';
import '../../entities/task_entity.dart';

abstract class TaskManagementUsecaseUpdateTask {
  Future<Either<Failure, TaskEntity>> call({required TaskEntity oldTask, required TaskEntity newTask});
}
