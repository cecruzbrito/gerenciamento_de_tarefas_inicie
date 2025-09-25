import 'package:get/get.dart';

import 'domain/repository/task_management_repository.dart';
import 'domain/usecases/add_task/task_management_usecase_add_task.dart';
import 'domain/usecases/add_task/task_management_usecase_add_task_imp.dart';
import 'domain/usecases/delete_task/task_management_usecase_delete_task.dart';
import 'domain/usecases/delete_task/task_management_usecase_delete_task_imp.dart';
import 'domain/usecases/get_tasks/task_management_usecase_get_tasks.dart';
import 'domain/usecases/get_tasks/task_management_usecase_get_tasks_imp.dart';
import 'domain/usecases/update_task/task_management_usecase_update_task.dart';
import 'domain/usecases/update_task/task_management_usecase_update_task_imp.dart';
import 'external/datasources/local/task_management_datasource_local_imp.dart';
import 'infra/datasource/task_management_datasource.dart';
import 'infra/repository/task_management_repository_imp.dart';
import 'presentation/add_or_update_task/controllers/add_or_update_task_controller.dart';
import 'presentation/task_list/controllers/task_list_controller.dart';

class TaskManagementBinding extends Bindings {
  @override
  void dependencies() {
    // datasources
    Get.put<TaskManagementDatasource>(TaskManagementDatasourceLocalImp(Get.find()));
    // repositories
    Get.put<TaskManagementRepository>(TaskManagementRepositoryImp(Get.find()));
    // usecases
    Get.put<TaskManagementUsecaseAddTask>(TaskManagementUsecaseAddTaskImp(Get.find()));
    Get.put<TaskManagementUsecaseDeleteTask>(TaskManagementUsecaseDeleteTaskImp(Get.find()));
    Get.put<TaskManagementUsecaseGetTasks>(TaskManagementUsecaseGetTasksImp(Get.find()));
    Get.put<TaskManagementUsecaseUpdateTask>(TaskManagementUsecaseUpdateTaskImp(Get.find()));
    // controllers
    Get.put(AddTaskController(Get.find(), Get.find(), Get.find()));
    Get.put(TaskListController(Get.find(), Get.find(), Get.find(), Get.find()));
  }
}
