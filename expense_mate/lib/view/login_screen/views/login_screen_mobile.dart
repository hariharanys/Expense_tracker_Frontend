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
    return Scaffold(
      body: Container(
        height: screensize.height,
        width: screensize.width,
        color: AppColors.primaryColor,
        child: Column(
          children: [
            Container(
                height: screensize.height / 4,
                width: screensize.width,
                color: AppColors.primaryColor,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        right: -30,
                        top: -30,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.templateShapeColor,
                          ),
                        )),
                    Positioned(
                        left: 150,
                        top: 100,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.templateShapeColor,
                          ),
                        )),
                  ],
                )),
            Expanded(
                child: Container(
              width: screensize.width,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: AppColors.templateShapeColor),
              child: const LoginTextField(),
            ))
          ],
        ),
      ),
    );
  }
}
