import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/core/di/di.dart';
import 'package:flutter_task/features/home/presentation/components/products_grid_list.dart';
import 'package:flutter_task/features/home/presentation/managers/home_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<HomeCubit>()..fetchProducts(),
    child: BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        switch (state) {
          case HomeInitial():
            return const Placeholder();
          case HomeLoading():
            return const Center(child: CircularProgressIndicator());
          case HomeSuccess():
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProductsGridList(products: state.products),
            );
          case HomeFailure():
            return Center(child: Text('Error: ${state.message}'));
        }
      },
    ),
  );
}