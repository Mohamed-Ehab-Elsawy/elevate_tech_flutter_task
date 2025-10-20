import 'package:flutter/material.dart';
import 'package:flutter_task/features/home/presentation/home_view.dart';

class FlutterTaskApp extends StatelessWidget {
  const FlutterTaskApp({super.key});

  @override
  Widget build(BuildContext context) =>
      const MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
}