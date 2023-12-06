import 'package:flutter/material.dart';
import 'package:food_recipe/Res/Components/Routs/app_route_name.dart';
import 'package:food_recipe/Res/Components/Routs/routes.dart';
import 'package:food_recipe/Res/Components/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Food Recipe",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      initialRoute: AppRouteName.getStarted,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}