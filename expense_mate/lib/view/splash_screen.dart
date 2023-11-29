import 'package:expense_mate/controller/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:expense_mate/constants/constants.dart';
import 'package:expense_mate/Theme/app_color.dart';
import 'package:expense_mate/utils/custom_outlined.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final ScreenSizeController screenSizeController =
        Get.find<ScreenSizeController>();

    const String assetName = "assets/images/splashscreen.svg";
    Size screensize = screenSizeController.screenSize.value;
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
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 4,
            ),
            SizedBox(
              height: screensize.height * 0.09,
            ),
            Text(
              Constants.langConstants.getText(
                  Constants.langConstants.splashscreen,
                  Constants.langConstants.lblGreeting),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: screensize.width * 0.08,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  color: AppColors.secondaryColor),
            ),
            SizedBox(
              height: screensize.height * 0.03,
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
            SizedBox(
              height: screensize.height * 0.1,
            ),
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
                  fontSizeMultiplier: 0.04,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  textColor: AppColors.primaryColor,
                  widthMultiplier: 0.4,
                ),
                CustomOutlinedButton(
                  label: Constants.langConstants.getText(
                      Constants.langConstants.splashscreen,
                      Constants.langConstants.lblSplashSignUp),
                  onPressed: null,
                  backgroundColor: AppColors.buttonPrimaryColor,
                  shape: const LinearBorder(),
                  fontSizeMultiplier: 0.04,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  textColor: AppColors.secondaryColor,
                  widthMultiplier: 0.4,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
