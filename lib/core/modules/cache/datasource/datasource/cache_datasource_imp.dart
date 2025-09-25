import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/cache_entry_entity.dart';
import '../../infra/datasources/cache_datasource.dart';
import '../models/cache_entry_model.dart';

class CacheDatasourceImp implements CacheDatasource {
  @override
  Future<CacheEntryEntity> addItem(CacheKeys key, {required CacheEntryEntity entry}) async {
    final cached = await get(key);
    await put(key, entries: [...cached, entry]);
    return entry;
  }

  @override
  Future<void> deleteItem(CacheKeys key, {required int id}) async {
    final cached = await get(key);
    cached.removeWhere((e) => e.id == id);
    await put(key, entries: cached);
  }

  @override
  Future<List<CacheEntryEntity>> get(CacheKeys key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final cache = prefs.getString(key.name);
    if (cache == null) return [];
    final json = jsonDecode(cache) as List;
    return json.map(CacheEntryModel.fromMap).toList();
  }

  @override
  Future<CacheEntryEntity> updateItem(CacheKeys key, {required CacheEntryEntity entry}) async {
    final cached = await get(key);
    final indexToUpdate = cached.indexWhere((e) => e.id == entry.id);
    if (indexToUpdate == -1) return entry;
    cached[indexToUpdate] = entry;
    await put(key, entries: cached);
    return entry;
  }

  Future<void> put(CacheKeys key, {required List<CacheEntryEntity> entries}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final toCache = entries.map((e) => CacheEntryModel.toMap(e)).toList();
    final jsonToCache = jsonEncode(toCache);
    prefs.setString(key.name, jsonToCache);
  }
}
