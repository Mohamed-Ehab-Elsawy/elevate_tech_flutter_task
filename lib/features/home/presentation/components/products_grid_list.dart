import 'package:flutter/material.dart';
import 'package:flutter_task/features/home/domain/entity/product_entity.dart';
import 'package:flutter_task/features/home/presentation/components/product_card.dart';

class ProductsGridList extends StatelessWidget {
  const ProductsGridList({super.key});

  @override
  Widget build(BuildContext context) => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 0.8,
    ),
    itemCount: 10,
    itemBuilder:
        (context, index) => ProductCard(
          product: ProductEntity(
            id: 1,
            title: 'No. 1 Backpack, Fits 15 Laptops, No. 1 Backpack, Fits 15 Laptops',
            price: 109.95,
            description:
                'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
            category: 'men\'s clothing',
            image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png',
            rating: 5.0,
            ratingCount: 120,
          ),
        ),
  );
}