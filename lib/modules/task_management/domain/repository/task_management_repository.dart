import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../entities/task_entity.dart';

abstract class TaskManagementRepository {
  Future<Either<Failure, TaskEntity>> addTask({
    required String title,
    required String description,
    required bool hasCompleted,
  });
  Future<Either<Failure, TaskEntity>> updateTask({required TaskEntity oldTask, required TaskEntity newTask});
  Future<Either<Failure, void>> deleteTask({required int id});
  Future<Either<Failure, List<TaskEntity>>> getTasks();
}
