import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppSizes.sm.sp),
      padding: EdgeInsets.fromLTRB(0, AppSizes.sm.sp, AppSizes.sm.sp, AppSizes.sm.sp),
      decoration: BoxDecoration(
        border: Border.all(color: Get.isDarkMode ? AppColors.darkContainer : AppColors.softGrey),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg.sp),
      ),
      child: ListTile(
        leading: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
