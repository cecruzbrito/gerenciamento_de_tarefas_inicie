import 'package:get/get.dart';

import 'datasource/datasource/cache_datasource_imp.dart';
import 'domain/repository/cache_repository.dart';
import 'infra/datasources/cache_datasource.dart';
import 'infra/repository/cache_repository_imp.dart';

class CacheBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CacheDatasource>(CacheDatasourceImp());
    Get.put<CacheRepository>(CacheRepositoryImp(Get.find()));
  }
}
