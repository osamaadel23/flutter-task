import 'package:flutter/material.dart';
import 'package:task_osama/pages/details/details.dart';
import 'package:task_osama/pages/home/home.dart';
import 'package:task_osama/pages/main/main_page.dart';

class Routes {
  static Map<String, Function> rules = {
    '/': (context, params) => const MainPage(),
    '/home': (context, params) => const HomePage(),
    '/details': (context, params) => const DetailsScreen()
  };

  static Route<dynamic>? getRoutes(RouteSettings settings) {
    final String? key = settings.name;
    final dynamic params = settings.arguments;
    final fn = rules[key];

    if (fn == null) {
      return null;
    }
    return MaterialPageRoute(
      builder: (context) {
        return fn(context, params);
      },
    );
  }
}
