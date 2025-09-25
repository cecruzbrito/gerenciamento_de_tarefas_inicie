import '../../domain/entities/task_entity.dart';

class TaskModel {
  static Map<String, dynamic> toMap(TaskEntity e) => <String, dynamic>{
    'id': e.id,
    'title': e.title,
    'description': e.description,
    'hasCompleted': e.hasCompleted,
    "createdIn": e.createdIn.toIso8601String(),
  };

  static TaskEntity fromMap(dynamic map) => TaskEntity(
    id: map['id'] as int,
    title: map['title'] as String,
    description: map['description'] as String,
    hasCompleted: map['hasCompleted'] as bool,
    createdIn: DateTime.parse(map["createdIn"] as String),
  );
}
