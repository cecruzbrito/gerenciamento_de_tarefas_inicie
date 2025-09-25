// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../../../core/widgets/mixin/date_mixin/date_mixin.dart';
import '../../../domain/entities/task_entity.dart';

class TaskTile extends StatelessWidget with DateMixin {
  const TaskTile({
    super.key,
    required this.task,
    this.onDelete,
    required this.animation,
    this.onChangeStatusTask,
    this.onTapUpdateTask,
  });
  final TaskEntity task;
  final Function()? onDelete;
  final Function(TaskEntity)? onChangeStatusTask;
  final Function(TaskEntity)? onTapUpdateTask;
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    final title = task.title;
    final desc = task.description ?? "";
    final date = "Criado em ${parseDate(task.createdIn)}";
    final hasCompleted = task.hasCompleted;
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        // margin: EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          onTap: onTapUpdateTask == null ? null : () => onTapUpdateTask!(task),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          title: TextAnimator(title, key: ValueKey(title)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5,
            children: [
              if (desc.isNotEmpty) TextAnimator(desc, key: ValueKey(desc), style: TextTheme.of(context).bodySmall),
              Text(date, style: TextTheme.of(context).labelSmall),
            ],
          ),
          leading: IconButton(
            onPressed: onChangeStatusTask == null ? null : () => onChangeStatusTask!(task),
            icon: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
              outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
              child: Icon(
                key: ValueKey(hasCompleted),
                hasCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          trailing: IconButton(
            color: Theme.of(context).colorScheme.error,
            onPressed: onDelete,
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
