import 'package:get/get.dart';

class RouterApp {
  dynamic get args => Get.arguments;

  Future<T?> pushNamed<T>(RoutesApp route, {dynamic args}) async => (await Get.toNamed<T>(route.path, arguments: args));

  pop<T>({T? result}) => Get.back<T>(result: result);
}

enum RoutesApp {
  addTask,
  detailsTask,
  taskList;

  static String initialPath = RoutesApp.taskList.path;

  String get path => switch (this) {
    RoutesApp.addTask => "/add_task",
    RoutesApp.detailsTask => "/details_task",
    RoutesApp.taskList => "/",
  };
}
