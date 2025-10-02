import '../entities/invoice.dart';
import '../entities/payment.dart';

abstract class IBillingRepository {
  Future<List<Invoice>> listInvoices();
  Future<Payment> createPayment(String invoiceId, double amount);
}
