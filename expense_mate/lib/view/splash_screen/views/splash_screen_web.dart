import 'package:expense_mate/view/splash_screen/imports/splash_screen_import.dart';

class SplashScreenWeb extends StatefulWidget {
  const SplashScreenWeb({super.key});

  @override
  State<SplashScreenWeb> createState() => _SplashScreenWebState();
}

class _SplashScreenWebState extends State<SplashScreenWeb> {
  @override
  Widget build(BuildContext context) {
    String assetName = FileConstant.splashScreenBg;
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: screensize.height,
      width: screensize.width,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50),
            width: screensize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetName,
                  height: 350,
                  width: 350,
                ),
                const SizedBox(
                  height: 39,
                ),
                Text(
                  Constants.langConstants.getText(
                      Constants.langConstants.splashscreen,
                      Constants.langConstants.lblGreeting),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      color: AppColors.secondaryColor),
                ),
                const SizedBox(
                  height: 39,
                ),
                Text(
                  Constants.langConstants.getText(
                      Constants.langConstants.splashscreen,
                      Constants.langConstants.lblSplashContent),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      color: AppColors.secondaryColor),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 50),
            width: screensize.width / 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOutlinedButton(
                      label: Constants.langConstants.getText(
                          Constants.langConstants.splashscreen,
                          Constants.langConstants.lblSplashLogIn),
                      onPressed: null,
                      backgroundColor: AppColors.secondaryColor,
                      shape: const LinearBorder(),
                      fontSizeMultiplier: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      textColor: AppColors.primaryColor,
                      widthMultiplier: 201,
                    ),
                    CustomOutlinedButton(
                      label: Constants.langConstants.getText(
                          Constants.langConstants.splashscreen,
                          Constants.langConstants.lblSplashSignUp),
                      onPressed: null,
                      backgroundColor: AppColors.buttonPrimaryColor,
                      shape: const LinearBorder(),
                      fontSizeMultiplier: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      textColor: AppColors.secondaryColor,
                      widthMultiplier: 201,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
