import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/domain/theme/theme.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

import 'core/core_binding.dart';
import 'core/modules/router/router_app.dart';
import 'modules/task_management/domain/entities/task_entity.dart';
import 'modules/task_management/presentation/add_or_update_task/add_or_update_task_page.dart';
import 'modules/task_management/presentation/task_list/task_list_page.dart';
import 'modules/task_management/task_management_binding.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MaterialTheme(Typography.material2021().black);
    return GetMaterialApp(
      theme: theme.light(),
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: "/",
      initialBinding: CoreBinding(),
      getPages: [
        GetPage(
          name: "/add_task",
          binding: TaskManagementBinding(),
          page: () => AddOrUpdateTaskPage(ctr: Get.find()),
        ),
        GetPage(
          name: "/details_task",
          binding: TaskManagementBinding(),
          page: () => AddOrUpdateTaskPage(ctr: Get.find(), taskToUpdate: (Get.find<RouterApp>().args as TaskEntity)),
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
