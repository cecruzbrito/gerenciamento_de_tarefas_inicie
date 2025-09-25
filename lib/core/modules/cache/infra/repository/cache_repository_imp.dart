import 'package:dartz/dartz.dart';

import '../../../../domain/errors/errors.dart';
import '../../domain/entities/cache_entry_entity.dart';
import '../../domain/repository/cache_repository.dart';
import '../datasources/cache_datasource.dart';

class CacheRepositoryImp implements CacheRepository {
  final CacheDatasource _datasource;

  CacheRepositoryImp(this._datasource);
  @override
  Future<Either<Failure, CacheEntryEntity>> addItem(CacheKeys key, {required CacheEntryEntity entry}) async {
    try {
      return Right(await _datasource.addItem(key, entry: entry));
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, void>> deleteItem(CacheKeys key, {required int id}) async {
    try {
      return Right(await _datasource.deleteItem(key, id: id));
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<CacheEntryEntity>>> get(CacheKeys key) async {
    try {
      return Right(await _datasource.get(key));
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, CacheEntryEntity>> updateItem(CacheKeys key, {required CacheEntryEntity entry}) async {
    try {
      return Right(await _datasource.updateItem(key, entry: entry));
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
