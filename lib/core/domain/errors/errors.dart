class Failure implements Exception {
  final String msg;
  final bool hasAbort;
  Failure({required this.msg, this.hasAbort = false});
}
