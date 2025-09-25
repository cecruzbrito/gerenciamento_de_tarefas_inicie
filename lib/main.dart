import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/modules/cache/cache_binding.dart';
import 'package:gerenciamento_de_tarefas/core/modules/router/router_app.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/entities/task_entity.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/presentation/task_list/task_list_page.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

import 'core/core_binding.dart';
import 'modules/task_management/presentation/add_or_update_task/add_or_update_task_page.dart';
import 'modules/task_management/task_management_binding.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: "/",
      initialBinding: CoreBinding(),
      getPages: [
        GetPage(
          name: "/add",
          binding: TaskManagementBinding(),
          page: () => AddOrUpdateTaskPage(ctr: Get.find()),
        ),
        GetPage(
          name: "/update_task",
          binding: TaskManagementBinding(),
          page: () => AddOrUpdateTaskPage(ctr: Get.find(), taskToUpdate: Get.find<RouterApp>().args as TaskEntity),
        ),
        GetPage(
          name: "/",
          binding: TaskManagementBinding(),
          page: () => TaskListPage(ctr: Get.find()),
        ),
      ],
    );
  }
}
