import 'package:ecommmerce/utils/theme/widget_themes/appbar_theme.dart';
import 'package:ecommmerce/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:ecommmerce/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:ecommmerce/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:ecommmerce/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:ecommmerce/utils/theme/widget_themes/text_field_theme.dart';
import 'package:ecommmerce/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

abstract class CustomAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: CustomTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: CustomTextTheme.darkTextTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkInputDecorationTheme,
  );
}
