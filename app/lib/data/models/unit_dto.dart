class UnitDto {
  final String id;
  final String name;
  const UnitDto({required this.id, required this.name});

  factory UnitDto.fromJson(Map<String, dynamic> j) =>
      UnitDto(id: j['id'] as String, name: j['name'] as String);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
