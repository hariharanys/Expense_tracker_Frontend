import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSizeController extends GetxController {
  late Rx<Size> screenSize;

  void updateScreenSize(BuildContext context) {
    screenSize = MediaQuery.of(context).size.obs;
  }
}
