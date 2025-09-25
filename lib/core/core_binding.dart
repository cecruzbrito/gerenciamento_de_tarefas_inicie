import 'package:get/get.dart';

import 'cache/cache_binding.dart';

class CoreBinding extends Bindings {
  @override
  void dependencies() {
    CacheBinding().dependencies();
  }
}
