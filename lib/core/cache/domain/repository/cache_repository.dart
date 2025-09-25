import 'package:dartz/dartz.dart';

import '../../../errors/errors.dart';
import '../entities/cache_entry_entity.dart';

abstract class CacheRepository {
  Future<Either<Failure, List<CacheEntryEntity>>> get(CacheKeys key);
  Future<Either<Failure, CacheEntryEntity>> addItem(CacheKeys key, {required CacheEntryEntity entry});
  Future<Either<Failure, void>> deleteItem(CacheKeys key, {required int id});
  Future<Either<Failure, CacheEntryEntity>> updateItem(CacheKeys key, {required CacheEntryEntity entry});
}
