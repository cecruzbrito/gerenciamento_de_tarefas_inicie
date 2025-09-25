class TaskEntity {
  final int id;
  final String title;
  final String? description;
  final bool hasCompleted;
  final DateTime createdIn;
  const TaskEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.hasCompleted,
    required this.createdIn,
  });

  TaskEntity copyWith({int? id, String? title, String? description, bool? hasCompleted, DateTime? createdIn}) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      hasCompleted: hasCompleted ?? this.hasCompleted,
      createdIn: createdIn ?? this.createdIn,
    );
  }
}
