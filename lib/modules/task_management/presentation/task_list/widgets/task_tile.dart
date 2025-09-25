import 'package:flutter/material.dart';

import '../../../../../core/widgets/mixin/date_mixin/date_mixin.dart';
import '../../../domain/entities/task_entity.dart';

class TaskTile extends StatelessWidget with DateMixin {
  const TaskTile({super.key, required this.task});
  final TaskEntity task;
  @override
  Widget build(BuildContext context) {
    final title = task.title;
    final date = "Criado em ${parseDate(task.createdIn)}";
    final hasCompleted = task.hasCompleted;

    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        title: Text(title),
        subtitle: Text(date),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            hasCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        trailing: IconButton(color: Theme.of(context).colorScheme.error, onPressed: () {}, icon: Icon(Icons.delete)),
      ),
    );
  }
}
