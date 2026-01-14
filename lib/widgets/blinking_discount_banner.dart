
import 'package:flutter/material.dart';

class BlinkingDiscountBanner extends StatefulWidget {
  const BlinkingDiscountBanner({super.key});

  @override
  State<BlinkingDiscountBanner> createState() =>
      _BlinkingDiscountBannerState();
}

class _BlinkingDiscountBannerState extends State<BlinkingDiscountBanner> {
  bool visible = true;

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFF512F), Color(0xFFDD2476)],
          ),
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: const [
            Text(
              "🎉 FIRST ORDER SPECIAL !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Get 20% OFF on your first order\n"
              "OR 10% OFF on orders above ₹500",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}