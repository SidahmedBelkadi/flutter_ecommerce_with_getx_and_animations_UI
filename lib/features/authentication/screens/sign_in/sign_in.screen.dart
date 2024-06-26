import 'package:ecommmerce/features/authentication/screens/sign_in/widgets/sign_in_form.dart';
import 'package:ecommmerce/features/authentication/screens/sign_in/widgets/sign_in_header.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/sign_in/sign_in.controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: SizedBox(
            height: Get.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                SizedBox(height: AppSizes.spaceBtwSections.h),
                const SignInHeader(),
                SizedBox(height: AppSizes.spaceBtwSections.h),
                const SignInForm(),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
