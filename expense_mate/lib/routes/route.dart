import 'package:expense_mate/routes/imports/route_imports.dart';

const String splashScreen = 'splash';
const String loginScreen = 'login';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    default:
      throw ('This route name does not exist');
  }
}
