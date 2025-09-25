import 'package:get/get.dart';

import 'modules/cache/cache_binding.dart';
import 'modules/router/router_app.dart';

class CoreBinding extends Bindings {
  @override
  void dependencies() {
    CacheBinding().dependencies();
    Get.put(RouterApp());
  }
}
