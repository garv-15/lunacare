import 'package:flutter/material.dart';
import '../data/dummy_stores.dart';
import '../widgets/store_card.dart';
import '../widgets/blinking_discount_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LunaCare 💊"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const BlinkingDiscountBanner(),
          Expanded(
            child: ListView.builder(
              itemCount: stores.length,
              itemBuilder: (_, i) => StoreCard(store: stores[i]),
            ),
          ),
        ],
      ),
    );
  }
}