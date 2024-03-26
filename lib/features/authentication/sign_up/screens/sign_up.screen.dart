import 'package:ecommmerce/features/authentication/sign_up/controllers/sign_up.controller.dart';
import 'package:ecommmerce/features/authentication/sign_up/screens/widgets/sign_up_form.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appBars/custom_back_app_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: SizedBox(
            height: Get.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  AppTexts.signUpHeader,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: AppSizes.spaceBtwSections.h),
                const SignUpForm(),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
