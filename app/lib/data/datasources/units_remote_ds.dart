class UnitsRemoteDataSource {
  Future<List<Map<String, dynamic>>> listUnits() async {
    // TODO: reemplazar por llamada HTTP real (Dio) cuando esté definido.
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return [
      {'id': 'U-101', 'name': 'Unidad 101'},
      {'id': 'U-102', 'name': 'Unidad 102'},
    ];
  }
}
