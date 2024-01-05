import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';

showErrorMessage(BuildContext bc, String error, {int duration = 3}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Flushbar(
      title: "Error",
      backgroundColor: AppColors.redColor,
      message: error,
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      borderRadius: BorderRadius.circular(20),
      duration: Duration(seconds: duration),
    ).show(bc);
  });
}

showMessage(BuildContext bc, String message) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Flushbar(
      title: "Attention",
      backgroundColor: AppColors.primaryColor,
      message: message,
      titleColor: AppColors.blueColor,
      messageColor: AppColors.blueColor,
      flushbarPosition: FlushbarPosition.TOP,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      borderRadius: BorderRadius.circular(12),
      duration: const Duration(seconds: 3),
    ).show(bc);
  });
}


