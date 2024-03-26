import 'package:ecommmerce/features/authentication/sign_in/screens/widgets/sign_in_form.dart';
import 'package:ecommmerce/features/authentication/sign_in/screens/widgets/sign_in_header.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
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
