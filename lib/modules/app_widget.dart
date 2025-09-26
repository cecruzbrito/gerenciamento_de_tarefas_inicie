import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/core_binding.dart';
import '../core/modules/router/router_app.dart';
import '../core/theme/theme.dart';
import 'task_management/domain/entities/task_entity.dart';
import 'task_management/presentation/add_or_update_task/add_or_update_task_page.dart';
import 'task_management/presentation/task_list/task_list_page.dart';
import 'task_management/task_management_binding.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MaterialTheme(Typography.material2021().black);
    return GetMaterialApp(
      theme: theme.light(),
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: RoutesApp.initialPath,
      initialBinding: CoreBinding(),
      getPages: [
        GetPage(
          name: RoutesApp.addTask.path,
          binding: TaskManagementBinding(),
          page: () => AddOrUpdateTaskPage(ctr: Get.find()),
        ),
        GetPage(
          name: RoutesApp.detailsTask.path,
          binding: TaskManagementBinding(),
          page: () => AddOrUpdateTaskPage(ctr: Get.find(), taskToUpdate: (Get.find<RouterApp>().args as TaskEntity)),
        ),
        GetPage(
          name: RoutesApp.taskList.path,
          binding: TaskManagementBinding(),
          page: () => TaskListPage(ctr: Get.find()),
        ),
      ],
    );
  }
}
