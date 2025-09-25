import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/cache/cache_binding.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/presentation/task_list/task_list_page.dart';
import 'package:get/route_manager.dart';

import 'core/core_binding.dart';
import 'modules/task_management/task_management_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: CoreBinding(),
      getPages: [GetPage(name: "/", binding: TaskManagementBinding(), page: () => TaskListPage())],
    );
  }
}
