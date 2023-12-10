import 'package:expense_mate/view/login_screen/imports/login_screen_imports.dart';

class LoginScreenMobile extends StatefulWidget {
  const LoginScreenMobile({super.key});

  @override
  State<LoginScreenMobile> createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends State<LoginScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    String assetName = FileConstant.loginScreenBg;
    CustomClip clipper = CustomClip(radius: 150);
    return Scaffold(
      body: Container(
        height: screensize.height,
        width: screensize.width,
        color: AppColors.primaryColor,
        child: Stack(
          children: [
            CustomClipPath(
              customClipper: clipper,
              width: screensize.width,
              height: 150,
              imgUrl: assetName,
            )
          ],
        ),
      ),
    );
  }
}
