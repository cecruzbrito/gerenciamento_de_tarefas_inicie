import '../../domain/entities/cache_entry_entity.dart';

abstract class CacheDatasource {
  Future<List<CacheEntryEntity>> get(CacheKeys key);
  Future<CacheEntryEntity> addItem(CacheKeys key, {required CacheEntryEntity entry});
  Future<void> deleteItem(CacheKeys key, {required int id});
  Future<CacheEntryEntity> updateItem(CacheKeys key, {required CacheEntryEntity entry});
}
