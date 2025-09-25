import 'package:dartz/dartz.dart';

import '../../../../../core/errors/errors.dart';

abstract class TaskManagementUsecaseDeleteTask {
  Future<Either<Failure, void>> call({required int id});
}
