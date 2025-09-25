import 'package:get/get.dart';

class RouterApp {
  dynamic get args => Get.arguments;

  Future<T?> pushNamed<T>(String name, {dynamic args}) async => (await Get.toNamed<T>(name, arguments: args));

  pop<T>({T? result}) => Get.back<T>(result: result);
}
