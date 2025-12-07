import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app/routes.dart';
import '../app/theme.dart';
import '../modules/auth/presentation/controller/auth_controller.dart';
import '../modules/tasks/presentation/controller/task_controller.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthController()),
        ChangeNotifierProvider(create: (_) => TaskController()),
      ],
      child: MaterialApp(
        title: 'Productivity App',
        theme: AppTheme.lightTheme,
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.login,
      ),
    );
  }
}
