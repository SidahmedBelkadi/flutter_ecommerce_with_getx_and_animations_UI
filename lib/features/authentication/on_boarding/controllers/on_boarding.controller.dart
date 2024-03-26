import 'package:ecommmerce/config/app_routes.dart';
import 'package:ecommmerce/data/static/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find<OnBoardingController>();

  RxInt pageIndex = 0.obs;
  PageController pageController = PageController();

  void onPageChanged(value) {
    pageIndex(value);
  }

  void nextPage() {
    pageIndex++;
    if (pageIndex > onboardingList.length - 1) {
      skip();
    }
    pageController.animateToPage(pageIndex.value,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  void skip() {
    Get.offNamed(AppRoutes.signIn);
  }
}
