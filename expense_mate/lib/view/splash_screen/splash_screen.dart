import 'package:expense_mate/view/splash_screen/imports/splash_screen_import.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;

    double mobileScreenWidthThreshold = ScreenSize.mobileScreenThreshold;

    if (screensize.width < mobileScreenWidthThreshold) {
      return SplashScreenMobile();
    } else {
      return SplashScreenWeb();
    }
  }
}
