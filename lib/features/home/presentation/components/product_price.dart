import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double price;

  const ProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Text(
      "EGP $price",
      style: TextStyle(color: Color(0xFF06004F), fontSize: 16),
    ),
  );
}