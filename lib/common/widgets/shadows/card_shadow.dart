import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/app_colors.dart';

BoxShadow buildBoxShadow() {
  return BoxShadow(
    color: Get.isDarkMode
        ? AppColors.darkerGrey.withOpacity(0.8)
        : AppColors.lightGrey.withOpacity(0.8),
    offset: const Offset(-3, 2),
    blurRadius: 0,
    spreadRadius: 4,
  );
}
