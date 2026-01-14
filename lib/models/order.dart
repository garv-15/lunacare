import 'medicine.dart';

class Order {
  final List<Medicine> medicines;
  final double total;
  final String paymentMethod;
  final DateTime date;

  Order({
    required this.medicines,
    required this.total,
    required this.paymentMethod,
    required this.date,
  });
}