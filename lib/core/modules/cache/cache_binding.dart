import 'package:gerenciamento_de_tarefas/core/modules/cache/datasource/datasource/cache_datasource_imp.dart';
import 'package:gerenciamento_de_tarefas/core/modules/cache/infra/repository/cache_repository_imp.dart';
import 'package:get/get.dart';

import 'domain/repository/cache_repository.dart';
import 'infra/datasources/cache_datasource.dart';

class CacheBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<CacheDatasource>(CacheDatasourceImp());
    Get.put<CacheRepository>(CacheRepositoryImp(Get.find()));
  }
}
