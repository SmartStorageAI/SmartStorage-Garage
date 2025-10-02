import '../entities/unit.dart';

abstract class IUnitsRepository {
  Future<List<Unit>> listUnits();
  Future<Unit?> getUnit(String id);
}
