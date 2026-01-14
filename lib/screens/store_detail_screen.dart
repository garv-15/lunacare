import 'package:flutter/material.dart';
import '../models/medical_store.dart';
import 'order_screen.dart';

class StoreDetailScreen extends StatelessWidget {
  final MedicalStore store;
  const StoreDetailScreen({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(store.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(store.address),
            const SizedBox(height: 8),
            Text("Open: ${store.openTime} - ${store.closeTime}"),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: const Text("Order Medicines"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const OrderScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}