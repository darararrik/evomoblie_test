import 'package:evomoblie_test/presentation/routing/app_router.dart';
import 'package:evomoblie_test/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      theme: AppTheme.theme,
    );
  }
}
