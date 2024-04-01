import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppSnackBar {
  static offlineSnackBar() {
    return Get.snackbar(
      "Oops!",
      "No Internet Connection.",
      margin: const EdgeInsets.all(AppSizes.sm),
      duration: const Duration(days: 1),
      backgroundColor: Colors.red,
      colorText: Colors.black,
      isDismissible: false,
      // icon: LottieBuilder.asset(
      //   "assets/images/animations/offline.json",
      //   width: 150,
      // ),
    );
  }

  static warningSnackBar({required String message, String title = "Warning"}) {
    return Get.snackbar(
      title,
      message,
      duration: const Duration(seconds: 3),
      backgroundColor: const Color.fromARGB(255, 255, 222, 102),
      colorText: Colors.black,
    );
  }

  static successSnackBar(
      {String title = "Congratulations", required String message}) {
    return Get.snackbar(
      title,
      message,
      duration: const Duration(seconds: 5),
      backgroundColor: Colors.blue,
      colorText: Colors.white,
    );
  }

  static errorSnackBar(
      {String title = "Error", String message = "Something went wrong"}) {
    return Get.snackbar(
      title,
      message,
      duration: const Duration(seconds: 3),
      backgroundColor: const Color.fromARGB(255, 255, 222, 102),
      colorText: Colors.black,
    );
  }
}
