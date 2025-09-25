import '../../domain/entities/cache_entry_entity.dart';

class CacheEntryModel {
  static Map<String, dynamic> toMap(CacheEntryEntity e) => {"id": e.id, "data": e.data};
  static CacheEntryEntity fromMap(dynamic e) => CacheEntryEntity(id: e["id"], data: e["data"]);
}
