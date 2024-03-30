import 'package:ecommmerce/utils/constants/app_colors.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppDialog {
  AppDialog._();

  static privacyPolicyDialog({required Function()? onConfirm}) {
    return Get.defaultDialog(
      barrierDismissible: false,
      title: "Accept privacy policy",
      content: const Text(
          "In order to create your account your have to read and accept the privacy policy & terms of use."),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
          child: SizedBox(
            width: Get.width.w / 3,
            child: ElevatedButton(
              onPressed: onConfirm,
              child: const Text("Accept"),
            ),
          ),
        ),
      ],
    );
  }

  static logoutDialog({required Function()? onConfirm}) {
    return Get.defaultDialog(
      barrierDismissible: false,
      title: "Sign out",
      content: const Text("Do you really want to logout ?"),
      actions: [
        MaterialButton(
          onPressed: () => Get.back(),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: AppColors.grey,
          child: const Text(
            "Cancel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
        MaterialButton(
          onPressed: onConfirm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: AppColors.primary,
          child: const Text(
            "Confirm",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }

  static deleteAccountWarningDialog({required Function()? onConfirm}) {
    return Get.defaultDialog(
      barrierDismissible: false,
      title: "Delete Account",
      content: const Text(
          "Do you really want to delete your account? note that this operation is permanent ."),
      actions: [
        MaterialButton(
          onPressed: () => Get.back(),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: AppColors.grey,
          child: const Text(
            "Cancel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
        MaterialButton(
          onPressed: onConfirm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.red,
          child: const Text(
            "Confirm",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
