import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  final String title;

  const ProductTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    child: Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Color(0xFF06004F),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}