import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';

class GalleryItem extends StatelessWidget {
  const GalleryItem({
    super.key,
    this.isSelected = false,
    required this.image,
  });

  final bool isSelected;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 80.w,
      padding: EdgeInsets.all(AppSizes.xs.sp),
      margin: EdgeInsets.symmetric(horizontal: AppSizes.sm.sp),
      decoration: BoxDecoration(
        color: Get.isDarkMode
            ? AppColors.darkContainer.withOpacity(0.2)
            : Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(
          AppSizes.borderRadiusLg,
        ),
        border: isSelected
            ? Border.all(
                color: AppColors.primary,
                width: 2.w,
              )
            : null,
      ),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
