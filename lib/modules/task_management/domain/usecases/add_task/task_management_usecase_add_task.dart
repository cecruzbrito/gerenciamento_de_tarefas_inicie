import 'package:dartz/dartz.dart';

import '../../../../../core/errors/errors.dart';
import '../../entities/task_entity.dart';

abstract class TaskManagementUsecaseAddTask {
  Future<Either<Failure, TaskEntity>> call({
    required String title,
    required String description,
    required bool hasCompleted,
  });
}
