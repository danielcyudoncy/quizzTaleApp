import 'package:flutter/material.dart';

class QuizzTaleDeviceUtils {
  QuizzTaleDeviceUtils._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static bool isLandScapeOrientation(BuildContext context) {
    final viewInset = View.of(context).viewInsets;
    return viewInset.bottom == 0;
  }
}
