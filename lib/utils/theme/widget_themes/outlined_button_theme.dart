import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
abstract class CustomOutlinedButtonTheme {
  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.dark,
      side: const BorderSide(color: AppColors.borderPrimary),
      textStyle: TextStyle(
        fontSize: 16.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.buttonHeight,
        horizontal: 20.sp,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius.sp),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.light,
      side: const BorderSide(color: AppColors.borderPrimary),
      textStyle: TextStyle(
        fontSize: 16.sp,
        color: AppColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.buttonHeight.sp,
        horizontal: 20.sp,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius.sp),
      ),
    ),
  );
}
