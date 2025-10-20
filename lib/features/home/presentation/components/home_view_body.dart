import 'package:flutter/material.dart';
import 'package:flutter_task/features/home/presentation/components/products_grid_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: ProductsGridList(),
  );
}