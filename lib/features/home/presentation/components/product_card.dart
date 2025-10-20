import 'package:flutter/material.dart';
import 'package:flutter_task/features/home/domain/entity/product_entity.dart';
import 'package:flutter_task/features/home/presentation/components/add_icon_button.dart';
import 'package:flutter_task/features/home/presentation/components/favourite_icon_button.dart';
import 'package:flutter_task/features/home/presentation/components/product_price.dart';
import 'package:flutter_task/features/home/presentation/components/product_rating.dart';
import 'package:flutter_task/features/home/presentation/components/product_title.dart';

import 'product_image.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0x99004182)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProductImage(imageUrl: product.image),
              ProductTitle(title: product.title),
              ProductPrice(price: product.price),
              ProductRating(rating: product.rating),
            ],
          ),
        ),
        const Positioned(
          right: 2,
          top: 2,
          child: FavouriteIconButton(),
        ),
        const Positioned(
          right: 2,
          bottom: 2,
          child: AddIconButton(),
        )
      ],
    );
  }
}