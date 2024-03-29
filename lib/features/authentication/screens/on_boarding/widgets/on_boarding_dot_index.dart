import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../data/static/data.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../controllers/on_boarding/on_boarding.controller.dart';

class OnBoardingDotIndex extends GetView<OnBoardingController> {
  const OnBoardingDotIndex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onboardingList.length,
          (index) => AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: 8.sp,
            width: controller.pageIndex.value == index ? 20.sp : 8.sp,
            margin: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ),
    );
  }
}
