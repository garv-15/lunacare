import 'package:flutter/material.dart';
import '../models/medical_store.dart';
import '../screens/store_detail_screen.dart';

class StoreCard extends StatelessWidget {
  final MedicalStore store;
  const StoreCard({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    final bool isRecommended = store.rating >= 4.5;
    final bool isEmergency = store.tags.contains("Emergency");
    final bool isOpenNow = true; // demo assumption (night app)

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => StoreDetailScreen(store: store),
          ),
        );
      },
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// TOP ROW
              Row(
                children: [
                  const Icon(Icons.local_hospital,
                      color: Colors.green, size: 32),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      store.name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star,
                          size: 16, color: Colors.amber),
                      Text(store.rating.toString()),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 8),
              Text(
                store.address,
                style: TextStyle(color: Colors.grey.shade700),
              ),

              const SizedBox(height: 6),
              Text("🕒 ${store.openTime} - ${store.closeTime}",
                  style: const TextStyle(fontSize: 13)),

              const SizedBox(height: 10),

              /// TAGS ROW
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: [
                  if (isRecommended)
                    _buildTag(
                      "Recommended",
                      Icons.thumb_up,
                      Colors.blue,
                    ),

                  if (isOpenNow)
                    _buildTag(
                      "Open Now",
                      Icons.access_time,
                      Colors.green,
                    ),

                  if (isEmergency)
                    _buildTag(
                      "Emergency",
                      Icons.warning,
                      Colors.red,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// TAG WIDGET
  Widget _buildTag(String label, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w600, color: color),
          ),
        ],
      ),
    );
  }
}