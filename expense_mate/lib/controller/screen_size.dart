import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSizeController extends GetxController {
  late Rx<Size> screenSize;

  @override
  void onInit() {
    super.onInit();
    screenSize = MediaQuery.of(Get.context!).size.obs;
  }
}
