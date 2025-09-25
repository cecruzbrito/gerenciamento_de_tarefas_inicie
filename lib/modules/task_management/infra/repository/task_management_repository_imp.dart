import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/repository/task_management_repository.dart';
import '../datasource/task_management_datasource.dart';

class TaskManagementRepositoryImp implements TaskManagementRepository {
  final TaskManagementDatasource _datasource;

  TaskManagementRepositoryImp(this._datasource);

  @override
  Future<Either<Failure, TaskEntity>> addTask({required String title, required bool hasCompleted}) async {
    try {
      return Right(await _datasource.addTask(text: title, hasCompleted: hasCompleted));
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, void>> deleteTask({required int id}) async {
    try {
      return Right(await _datasource.deleteTask(id: id));
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<TaskEntity>>> getTasks() async {
    try {
      return Right(await _datasource.getTasks());
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> updateTask({required TaskEntity oldTask, required TaskEntity newTask}) async {
    try {
      return Right(await _datasource.updateTask(oldTask: oldTask, newTask: newTask));
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
