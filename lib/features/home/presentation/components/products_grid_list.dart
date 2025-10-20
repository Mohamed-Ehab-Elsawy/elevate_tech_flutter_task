import 'package:flutter/material.dart';
import 'package:flutter_task/features/home/domain/entity/product_entity.dart';
import 'package:flutter_task/features/home/presentation/components/product_card.dart';

class ProductsGridList extends StatelessWidget {
  final List<ProductEntity> products;

  const ProductsGridList({super.key, required this.products});

  @override
  Widget build(BuildContext context) => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 0.8,
    ),
    itemCount: products.length,
    itemBuilder: (context, index) => ProductCard(product: products[index]),
  );
}