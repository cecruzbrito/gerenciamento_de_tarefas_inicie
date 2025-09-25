import 'package:dartz/dartz.dart';

import '../../../../../core/errors/errors.dart';
import '../../entities/task_entity.dart';

abstract class TaskManagementUsecaseGetTasks {
  Future<Either<Failure, List<TaskEntity>>> call();
}
