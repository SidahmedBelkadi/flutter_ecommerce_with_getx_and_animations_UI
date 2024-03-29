import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    this.hint = "Search for products...",
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.sm.sp,
        vertical: AppSizes.xs.sp / 2,
      ),
      decoration: BoxDecoration(
        color: Get.isDarkMode ? AppColors.darkerGrey : AppColors.softGrey,
        borderRadius: BorderRadius.circular(
          AppSizes.borderRadiusLg,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
