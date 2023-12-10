import 'package:expense_mate/view/splash_screen/imports/splash_screen_import.dart';
import 'package:expense_mate/routes/route.dart' as route;

class SplashScreenMobile extends StatefulWidget {
  const SplashScreenMobile({super.key});

  @override
  State<SplashScreenMobile> createState() => _SplashScreenMobileState();
}

class _SplashScreenMobileState extends State<SplashScreenMobile> {
  @override
  Widget build(BuildContext context) {
    String assetName = FileConstant.splashScreenBg;
    Size screensize = MediaQuery.of(context).size;
    final double leftRightPadding = screensize.width * 0.05;
    final double topPadding = screensize.height * 0.15;
    final double bottomPadding = screensize.height * 0.1;
    return Scaffold(
      body: Container(
        height: screensize.height,
        width: screensize.width,
        padding: EdgeInsets.fromLTRB(
            leftRightPadding, topPadding, leftRightPadding, bottomPadding),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              assetName,
              height: 250,
              width: 250,
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
                  fontSize: 29,
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
                  fontSize: screensize.width * 0.04,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  color: AppColors.secondaryColor),
            ),
            const SizedBox(
              height: 69,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(
                  label: Constants.langConstants.getText(
                      Constants.langConstants.splashscreen,
                      Constants.langConstants.lblSplashLogIn),
                  onPressed: () {
                    Navigator.pushNamed(context, route.loginScreen);
                  },
                  backgroundColor: AppColors.secondaryColor,
                  shape: const LinearBorder(),
                  fontSizeMultiplier: 15,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  textColor: AppColors.primaryColor,
                  widthMultiplier: 159,
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
                  widthMultiplier: 159,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
