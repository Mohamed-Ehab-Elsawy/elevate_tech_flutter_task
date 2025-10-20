import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'flutter_task_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  runApp(const FlutterTaskApp());
}