import 'package:flutter/material.dart';
import 'package:expense_mate/view/splash_screen.dart';

const String splashScreen = 'splash';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    default:
      throw ('This route name does not exist');
  }
}
