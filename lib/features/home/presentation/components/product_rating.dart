import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  final double rating;

  const ProductRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(left: 8, top: 4),
    child: Row(
      children: [
        Text(
          "Review ($rating)",
          style: TextStyle(color: Color(0xFF06004F), fontSize: 14),
        ),
        SizedBox(width: 4),
        Icon(Icons.star_rounded, color: Colors.yellow),
      ],
    ),
  );
}