# Patrones de Diseño (GoF) seleccionados — SmartStorage Garage

## Selección (7)
Factory Method, Strategy, Observer, Adapter, Facade, Singleton, Template Method.

### Por qué estos
Cubren creación desacoplada, variación de algoritmos (IA/ocupación), eventos/sensores, integración MQTT/REST, API sencilla para UI, recursos compartidos y un esqueleto de sincronización.

## Mapeo al proyecto
- **Factory Method** → elegir `RemoteDataSource` o `LocalDataSource` (offline-first).
- **Strategy** → pronóstico de ocupación (p. ej., MovingAverage vs ARIMA).
- **Observer** → eventos de sensores (intrusión/humedad) vía `Stream`.
- **Adapter** → MQTT/RTSP a puertos de dominio.
- **Facade** → `AccessService` orquesta abrir, auditar y notificar.
- **Singleton** → `Dio`/HTTP client y `SecureStorage`.
- **Template Method** → pipeline de sync offline (leer → reconciliar → persistir).

## Snippets (Dart) ilustrativos (no productivos)
```dart
abstract class OccupancyStrategy { double forecast(List<double> h); }
class MovingAverageStrategy implements OccupancyStrategy {
  final int window; MovingAverageStrategy(this.window);
  double forecast(List<double> h)=> h.take(window).fold(0,(a,b)=>a+b)/window;
}
abstract class IUnitsRepository { Future<List<String>> listUnitsIds(); }
class UnitsRemoteDataSource { Future<List<String>> listIds() async => ["U-101"]; }
class UnitsRepositoryImpl implements IUnitsRepository {
  final UnitsRemoteDataSource remote;
  UnitsRepositoryImpl(this.remote);
  @override Future<List<String>> listUnitsIds() => remote.listIds();
}s
