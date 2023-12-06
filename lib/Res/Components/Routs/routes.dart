import 'package:flutter/material.dart';
import 'package:food_recipe/Res/Components/Routs/app_route_name.dart';
import 'package:food_recipe/View/Pages/get_started_screen.dart';
import 'package:food_recipe/View/Pages/home_screen.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final argume = settings.arguments;
    switch (settings.name) {
      case AppRouteName.getStarted:
        return MaterialPageRoute(builder: (BuildContext) => GetStartedScreen());
      case AppRouteName.home:
        return MaterialPageRoute(builder: (BuildContext) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return GetStartedScreen();
        });
    }
  }
}
