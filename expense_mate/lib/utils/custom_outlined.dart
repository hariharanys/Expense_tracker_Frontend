import 'package:expense_mate/controller/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///this is a custombutton which is set to use dynamically
///for various purpose

class CustomOutlinedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double widthMultiplier;
  final double fontSizeMultiplier;
  final double letterSpacing;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final OutlinedBorder shape;

  const CustomOutlinedButton(
      {Key? key,
      required this.label,
      this.onPressed,
      this.widthMultiplier = 0.4,
      this.fontSizeMultiplier = 0.4,
      this.letterSpacing = 1.0,
      this.backgroundColor = Colors.white,
      this.textColor = Colors.black,
      this.fontWeight = FontWeight.w700,
      this.shape = const LinearBorder()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenSizeController screenSizeController =
        Get.find<ScreenSizeController>();

    Size screenSize = screenSizeController.screenSize.value;
    return SizedBox(
      width: screenSize.width * widthMultiplier,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            shape: shape),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: screenSize.width * fontSizeMultiplier,
              fontWeight: fontWeight,
              color: textColor,
              letterSpacing: letterSpacing),
        ),
      ),
    );
  }
}
