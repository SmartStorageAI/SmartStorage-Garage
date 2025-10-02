// import '../../domain/repositories/billing_repo.dart';
import '../models/invoice_dto.dart';

class BillingRepositoryImpl /* implements IBillingRepository */ {
  Future<List<InvoiceDto>> listInvoices() async {
    // TODO: HTTP real
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return [InvoiceDto(id: 'INV-001', amount: 199.0)];
  }
}
