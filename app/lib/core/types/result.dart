class Result<T> {
  final T? data;
  final Object? error;

  const Result._(this.data, this.error);
  const Result.ok(T data) : this._(data, null);
  const Result.err(Object error) : this._(null, error);

  bool get isOk => error == null;
}
