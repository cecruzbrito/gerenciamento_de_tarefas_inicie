import '../../domain/entities/task_entity.dart';

abstract class TaskManagementDatasource {
  Future<TaskEntity> addTask({required String text, required String description, bool hasCompleted = false});
  Future<TaskEntity> updateTask({required TaskEntity oldTask, required TaskEntity newTask});
  Future<void> deleteTask({required int id});
  Future<List<TaskEntity>> getTasks();
}
