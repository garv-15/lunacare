import 'package:flutter/material.dart';
import '../data/dummy_orders.dart';
import '../widgets/order_history_card.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const EditProfileScreen()),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/profile.png"),
          ),
          const SizedBox(height: 10),
          const Text("Shreyashree",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          Expanded(
            child: ListView(
              children: orderHistory
                  .map((o) => OrderHistoryCard(order: o))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}