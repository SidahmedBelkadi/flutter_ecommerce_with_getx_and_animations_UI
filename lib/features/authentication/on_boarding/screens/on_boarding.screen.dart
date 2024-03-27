import 'package:ecommmerce/features/authentication/on_boarding/controllers/on_boarding.controller.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/widgets/on_boarding_dot_index.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/widgets/on_boarding_next_button.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/widgets/on_boarding_slider_view.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = Get.put(OnBoardingController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: Column(
            children: [
              // Page View Slider with images
              const OnBoardingSlider(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    // Indexes of pages
                    const OnBoardingDotIndex(),
                    const Spacer(),
                    // Continue Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () => controller.skip(),
                          child: Text(AppTexts.skip,
                              style: Theme.of(context).textTheme.bodySmall),
                        ),
                        const OnBoardingButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
