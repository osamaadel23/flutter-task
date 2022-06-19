import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_osama/providers/providers.dart';
import 'package:task_osama/utils/router.dart';
import 'package:task_osama/utils/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: Providers.providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.getRoutes(settings),
      theme: Themes.themeLight(),
    );
  }
}
