import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/infra/datasource/task_management_datasource.dart';
import 'package:get/get.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  @override
  Widget build(BuildContext context) {
    final TaskManagementDatasource l = Get.find();
    return const Placeholder();
  }
}
