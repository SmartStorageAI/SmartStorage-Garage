class InvoiceDto {
  final String id;
  final double amount;
  const InvoiceDto({required this.id, required this.amount});

  factory InvoiceDto.fromJson(Map<String, dynamic> j) =>
      InvoiceDto(id: j['id'] as String, amount: (j['amount'] as num).toDouble());

  Map<String, dynamic> toJson() => {'id': id, 'amount': amount};
}
