class Payment {
  final String id;
  final String invoiceId;
  final double amount;

  const Payment({
    required this.id,
    required this.invoiceId,
    required this.amount,
  });
}
