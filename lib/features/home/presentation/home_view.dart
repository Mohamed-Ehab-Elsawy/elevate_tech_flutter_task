import 'package:flutter/material.dart';
import 'package:flutter_task/features/home/presentation/components/home_view_body.dart';

class HomeView extends StatelessWidget {

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
      body: HomeViewBody()
  );
}