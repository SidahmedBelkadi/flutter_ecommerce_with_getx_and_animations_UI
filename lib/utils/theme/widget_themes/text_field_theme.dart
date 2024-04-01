import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

abstract class CustomTextFormFieldTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    floatingLabelBehavior: FloatingLabelBehavior.auto,

    // constraints: const BoxConstraints.expand(height: AppSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeMd.sp, color: AppColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeSm.sp, color: AppColors.black),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
      fontSize: 12.sp,
      color: AppColors.error,
    ),
    floatingLabelStyle:
        const TextStyle().copyWith(color: AppColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 2, color: Colors.red),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    // constraints: const BoxConstraints.expand(height: AppSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeMd.sp, color: AppColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: AppSizes.fontSizeSm.sp, color: AppColors.white),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
      fontSize: 12.sp,
      color: AppColors.error,
    ),
    floatingLabelStyle:
        const TextStyle().copyWith(color: AppColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 1, color: AppColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius.sp),
      borderSide: const BorderSide(width: 2, color: Colors.red),
    ),
  );
}
