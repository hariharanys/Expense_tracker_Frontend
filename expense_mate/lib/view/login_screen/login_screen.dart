import 'package:expense_mate/view/login_screen/imports/login_screen_imports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    double mobileScreenWidthThreshold = ScreenSize.mobileScreenThreshold;
    if (screensize.width < mobileScreenWidthThreshold) {
      return LoginScreenMobile();
    } else {
      return LoginScreenWeb();
    }
  }
}
