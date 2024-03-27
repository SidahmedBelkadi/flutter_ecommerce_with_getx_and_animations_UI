import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/common/widgets/buttons/custom_elevated_button.dart';
import 'package:ecommmerce/features/authentication/forget_password/controllers/forget_password.controller.dart';
import 'package:ecommmerce/utils/constants/app_images.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/auth/app_text_field.dart';
import '../../../../utils/validators/app_validator.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgetPasswordController controller =
        Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(
        title: "Forget Password",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: SizedBox(
            height: Get.height,
            width: double.infinity,
            child: Column(
              children: [
                const Image(
                  image: AssetImage(AppImages.emailVerification),
                  fit: BoxFit.fill,
                ),
                SizedBox(height: AppSizes.spaceBtwSections.h),
                Text(
                  AppTexts.forgetPasswordHeader,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.spaceBtwSections.h * 2),
                Form(
                  key: controller.forgetPasswordFormKey,
                  child: AppTextFormField(
                    labelText: AppTexts.labelEmail,
                    prefixIcon: Icons.email,
                    textEditingController: controller.email,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) => AppValidation.validateInput(
                      value: value!,
                      type: InputTypes.email,
                      inputName: "Email Address",
                      min: 8,
                      max: 50,
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.spaceBtwSections.h),
                AppElevatedButton(
                  text: AppTexts.verifyEmail,
                  onPressed: () => controller.verify(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
