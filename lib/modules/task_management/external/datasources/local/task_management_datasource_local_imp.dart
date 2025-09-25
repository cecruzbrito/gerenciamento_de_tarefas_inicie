import '../../../../../core/modules/cache/domain/entities/cache_entry_entity.dart';
import '../../../../../core/modules/cache/domain/repository/cache_repository.dart';
import '../../../../../core/domain/errors/errors.dart';
import '../../../domain/entities/task_entity.dart';
import '../../../domain/errors/errors.dart';
import '../../../infra/datasource/task_management_datasource.dart';
import '../../models/task_model.dart';

class TaskManagementDatasourceLocalImp implements TaskManagementDatasource {
  final CacheRepository _cache;

  TaskManagementDatasourceLocalImp(this._cache);
  @override
  Future<TaskEntity> addTask({required String text, required String description, bool hasCompleted = false}) async {
    try {
      if (text.trim().isEmpty) throw FailureAddTaskEmptyTitle();
      final idTask = _generateIdentifier();
      final newTask = TaskEntity(
        id: idTask,
        createdIn: DateTime.now(),
        title: text,
        hasCompleted: hasCompleted,
        description: description,
      );
      final response = await _cache.addItem(
        CacheKeys.tasks,
        entry: CacheEntryEntity(id: idTask, data: TaskModel.toMap(newTask)),
      );

      return response.fold((l) => throw l, (_) => newTask);
    } on Failure {
      rethrow;
    }
  }

  int _generateIdentifier() => DateTime.now().millisecondsSinceEpoch;

  @override
  Future<void> deleteTask({required int id}) async {
    try {
      final response = await _cache.deleteItem(CacheKeys.tasks, id: id);
      return response.fold((l) => throw l, (_) => null);
    } on Failure {
      rethrow;
    }
  }

  @override
  Future<List<TaskEntity>> getTasks() async {
    try {
      final response = await _cache.get(CacheKeys.tasks);
      return response.fold((l) => throw l, (r) {
        final result = r.map((e) => TaskModel.fromMap(e.data)).toList()
          ..sort((a, b) => b.createdIn.compareTo(b.createdIn));
        return result;
      });
    } on Failure {
      rethrow;
    }
  }

  @override
  Future<TaskEntity> updateTask({required TaskEntity oldTask, required TaskEntity newTask}) async {
    try {
      final response = await _cache.updateItem(
        CacheKeys.tasks,
        entry: CacheEntryEntity(id: oldTask.id, data: TaskModel.toMap(newTask)),
      );
      return response.fold((l) => throw l, (_) => newTask);
    } on Failure {
      rethrow;
    }
  }
}
