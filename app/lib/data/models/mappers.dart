// NOTA: cuando la capa Domain esté lista, importa las entidades reales y ajusta.
// import '../../domain/entities/unit.dart' show Unit;
// Unit toEntity(UnitDto dto) => Unit(dto.id);

// Por ahora devolvemos un Map simple para no romper el build si Domain aún no está.
import 'unit_dto.dart';
import 'invoice_dto.dart';

Map<String, dynamic> mapUnit(UnitDto dto) => dto.toJson();
Map<String, dynamic> mapInvoice(InvoiceDto dto) => dto.toJson();
