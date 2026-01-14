import 'package:flutter/material.dart';
import '../data/dummy_medicines.dart';
import '../data/dummy_orders.dart';
import '../models/medicine.dart';
import '../models/order.dart';
import '../widgets/bill_summary.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Medicine> selected = [];
  String payment = "Cash";

  double get total =>
      selected.fold(0, (sum, m) => sum + m.price);

  double get discount => total * 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Medicines")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: medicines.map((m) {
                return CheckboxListTile(
                  title: Text("${m.name}  ₹${m.price}"),
                  subtitle: Text(m.category),
                  value: selected.contains(m),
                  onChanged: (_) {
                    setState(() {
                      selected.contains(m)
                          ? selected.remove(m)
                          : selected.add(m);
                    });
                  },
                );
              }).toList(),
            ),
          ),
          DropdownButton<String>(
            value: payment,
            items: ["Cash", "UPI", "Card"]
                .map((p) =>
                    DropdownMenuItem(value: p, child: Text(p)))
                .toList(),
            onChanged: (v) => setState(() => payment = v!),
          ),
          BillSummary(total: total, discount: discount),
          ElevatedButton(
            onPressed: () {
              orderHistory.add(Order(
                medicines: selected,
                total: total - discount,
                paymentMethod: payment,
                date: DateTime.now(),
              ));
              Navigator.pop(context);
            },
            child: const Text("Place Order"),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}