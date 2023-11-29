import 'package:expense_mate/constants/lang_constant.dart';
import 'package:flutter/material.dart';

class Constants {
  static LangConstants langConstants = LangConstants();

  static initialize() async {
    langConstants.initialize();
  }
}
