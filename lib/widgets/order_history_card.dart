import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderHistoryCard extends StatelessWidget {
  final Order order;
  const OrderHistoryCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: const Icon(Icons.receipt),
        title: Text("₹${order.total}"),
        subtitle: Text(order.paymentMethod),
        trailing: Text(
            "${order.date.day}/${order.date.month}/${order.date.year}"),
      ),
    );
  }
}