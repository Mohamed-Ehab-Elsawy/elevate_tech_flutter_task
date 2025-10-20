import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'core/di/di.dart';
import 'flutter_task_app.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  runApp(const FlutterTaskApp());
}