// Cuando Domain esté disponible, descomenta la import y el implements:
// import '../../domain/repositories/units_repo.dart';

import '../datasources/units_remote_ds.dart';
import '../datasources/units_local_ds.dart';
import '../models/unit_dto.dart';

class UnitsRepositoryImpl /* implements IUnitsRepository */ {
  final UnitsRemoteDataSource remote;
  final UnitsLocalDataSource local;

  UnitsRepositoryImpl({required this.remote, required this.local});

  Future<List<UnitDto>> listUnits() async {
    final raw = await remote.listUnits();
    return raw.map((j) => UnitDto.fromJson(j)).toList();
  }

  // Cuando exista IUnitsRepository en Domain, ajusta la firma:
  // @override
  // Future<List<Unit>> listUnits() async { ... mapear a entidad ... }
}
