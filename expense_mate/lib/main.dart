import 'package:expense_mate/constants/constants.dart';
import 'package:expense_mate/controller/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:expense_mate/routes/route.dart' as route;
import 'package:get/get.dart';

void main() async {
  await Constants.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ScreenSizeController screenSizeController =
      Get.put(ScreenSizeController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    screenSizeController.updateScreenSize(context);
    return GetMaterialApp(
        title: 'ExpenseMate',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: route.controller,
        initialRoute: route.splashScreen);
  }
}
