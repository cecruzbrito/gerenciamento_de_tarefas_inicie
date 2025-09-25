import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class RouterApp {
  dynamic get args => Get.arguments;

  pushNamed(String name, {dynamic args}) async => await Get.toNamed(name, arguments: args);

  popUntil(String name) async {
    Get.back();
    // await Get.offNamedUntil(name, (route) => route.settings.name == name);
  }
}
