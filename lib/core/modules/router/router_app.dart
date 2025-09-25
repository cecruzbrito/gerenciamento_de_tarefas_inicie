import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class RouterApp {
  dynamic get args => Get.arguments;

  pushNamed(String name, {dynamic args}) async => await Get.toNamed(name, arguments: args);

  pop<T>({T? result}) => Get.back<T>(result: result);
}
