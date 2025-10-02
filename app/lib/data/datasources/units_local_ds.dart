class UnitsLocalDataSource {
  final List<Map<String, dynamic>> _cache = const [];

  Future<List<Map<String, dynamic>>> listUnitsCached() async {
    return _cache;
  }
}
