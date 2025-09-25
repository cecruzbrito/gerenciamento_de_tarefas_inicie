import '../../domain/entities/task_entity.dart';

class TaskModel {
  static Map<String, dynamic> toMap(TaskEntity e) => <String, dynamic>{
    'id': e.id,
    'title': e.title,
    'hasCompleted': e.hasCompleted,
    "createdIn": e.createdIn.toIso8601String(),
  };

  static TaskEntity fromMap(dynamic map) => TaskEntity(
    id: map['id'] as int,
    title: map['title'] as String,
    hasCompleted: map['hasCompleted'] as bool,
    createdIn: DateTime.parse(map["createdIn"] as String),
  );
}
