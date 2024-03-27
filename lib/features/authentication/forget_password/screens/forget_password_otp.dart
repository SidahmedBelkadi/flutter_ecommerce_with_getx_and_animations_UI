import 'package:ecommmerce/common/screens/success.screen.dart';
import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_images.dart';

class ForgetPasswordOtpVerificationScreen extends StatelessWidget {
  const ForgetPasswordOtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(
        title: "OTP Verification",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Image(
                  image: const AssetImage(AppImages.otpVerification),
                  height: 200.h,
                  width: 280.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: AppSizes.spaceBtwItems.h),
                Text(
                  AppTexts.forgotPasswordOtpHeader,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "sidahmed@gmail.com",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.spaceBtwSections.h * 2),
                OtpTextField(
                  numberOfFields: 5,
                  borderColor: AppColors.primary,
                  focusedBorderColor: AppColors.primary,
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(12),
                  showFieldAsBox: true,
                  onSubmit: (String verificationCode) => Get.off(
                    SuccessScreen(
                      text: AppTexts.successHeader,
                      onPressed: () => Get.offAllNamed(AppRoutes.signIn),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
