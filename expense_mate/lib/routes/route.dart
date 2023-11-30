import 'package:expense_mate/routes/imports/route_imports.dart';

const String splashScreen = 'splash';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    default:
      throw ('This route name does not exist');
  }
}
