import 'package:flutter/material.dart';

class BillSummary extends StatelessWidget {
  final double total;
  final double discount;

  const BillSummary({
    super.key,
    required this.total,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Total: ₹$total"),
            Text("Discount: -₹$discount"),
            const Divider(),
            Text(
              "Payable: ₹${total - discount}",
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}