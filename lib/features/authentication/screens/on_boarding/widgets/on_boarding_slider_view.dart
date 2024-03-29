import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../data/static/data.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../controllers/on_boarding/on_boarding.controller.dart';

class OnBoardingSlider extends GetView<OnBoardingController> {
  const OnBoardingSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: PageView.builder(
        itemCount: onboardingList.length,
        controller: controller.pageController,
        onPageChanged: (value) => controller.onPageChanged(value),
        itemBuilder: (context, index) => Column(
          children: [
            SizedBox(height: AppSizes.spaceBtwSections.h),
            Text(
              onboardingList[index].title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image(
              image: AssetImage(onboardingList[index].image),
              width: Get.width,
              height: 350.h,
              fit: BoxFit.fill,
            ),
            const Spacer(),
            Text(
              onboardingList[index].body,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
