// ignore_for_file: public_member_api_docs, sort_constructors_first
class CacheEntryEntity {
  final int id;
  final Map<String, dynamic> data;
  CacheEntryEntity({required this.id, required this.data});
}

enum CacheKeys { tasks }
