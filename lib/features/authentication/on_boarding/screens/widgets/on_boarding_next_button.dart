import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../controllers/on_boarding.controller.dart';

class OnBoardingButton extends GetView<OnBoardingController> {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.xxl,
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
