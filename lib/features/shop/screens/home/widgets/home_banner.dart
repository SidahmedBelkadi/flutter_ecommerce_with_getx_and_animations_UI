import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../data/static/data.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../controllers/home/home.controller.dart';

class HomeBanner extends GetView<HomeController> {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (imageUrl) => ClipRRect(
                  borderRadius: BorderRadius.circular(16.sp),
                  child: Image(
                    image: AssetImage(imageUrl),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updateCarouselIndex(index),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: true,
            enlargeCenterPage: true,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwItems.h),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              banners.length,
              (index) => AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 6,
                width: controller.bannersIndex.value == index ? 20 : 6,
                margin: EdgeInsets.symmetric(
                  horizontal: AppSizes.xs.sp,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
