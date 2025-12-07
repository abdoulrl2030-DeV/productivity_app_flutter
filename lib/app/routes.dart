import 'package:flutter/material.dart';
import '../modules/auth/presentation/pages/login_page.dart';
import '../modules/tasks/presentation/pages/tasks_page.dart';
import '../modules/focus/presentation/pages/focus_timer_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String tasks = '/tasks';
  static const String focus = '/focus';

  static final Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginPage(),
    tasks: (_) => const TasksPage(),
    focus: (_) => const FocusTimerPage(),
  };
}
