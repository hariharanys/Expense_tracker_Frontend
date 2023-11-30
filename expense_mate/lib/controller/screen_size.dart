import 'package:expense_mate/controller/imports/screen_size_imports.dart';

class ScreenSizeController extends GetxController {
  late Rx<Size> screenSize;

  void updateScreenSize(BuildContext context) {
    screenSize = MediaQuery.of(context).size.obs;
  }
}
