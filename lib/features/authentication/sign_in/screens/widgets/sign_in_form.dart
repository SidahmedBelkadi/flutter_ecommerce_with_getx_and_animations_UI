import 'package:ecommmerce/config/app_routes.dart';
import 'package:ecommmerce/features/authentication/sign_in/controllers/sign_in.controller.dart';
import 'package:ecommmerce/features/authentication/sign_in/screens/widgets/remember_me_and_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/validators/app_validator.dart';

class SignInForm extends GetView<SignInController> {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.signInFormKey,
      child: Column(
        children: [
          AppTextFormField(
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
          SizedBox(height: AppSizes.spaceBtwInputFields.h),
          Obx(
            () => AppTextFormField(
              labelText: AppTexts.labelPassword,
              prefixIcon: Icons.key,
              suffixIcon: controller.passwordInvisible.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              onIconTap: () => controller.togglePassword(),
              textEditingController: controller.password,
              textInputType: TextInputType.text,
              obscureText: controller.passwordInvisible.value,
              validator: (value) => AppValidation.validateInput(
                value: value!,
                type: InputTypes.password,
                inputName: "Password",
                min: 8,
                max: 50,
              ),
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          const RememberMeAndForgetPasswordRow(),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          AppElevatedButton(
            text: AppTexts.signIn,
            onPressed: () => controller.signIn(context),
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          AppOutlinedButton(
            text: AppTexts.createAccount,
            onPressed: () => Get.toNamed(AppRoutes.signUp),
          ),
        ],
      ),
    );
  }
}
