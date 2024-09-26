import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';

void main() {
  runApp(const DepiLms());
}

class DepiLms extends StatelessWidget {
  const DepiLms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
