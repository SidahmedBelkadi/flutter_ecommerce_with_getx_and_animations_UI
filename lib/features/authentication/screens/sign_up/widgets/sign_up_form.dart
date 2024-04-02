import 'package:ecommmerce/features/authentication/screens/sign_up/widgets/privacy_policy_and_terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../config/routing/app_routes.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/validators/app_validator.dart';
import '../../../controllers/sign_up/sign_up.controller.dart';

class SignUpForm extends GetView<SignUpController> {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          AppTextFormField(
            labelText: AppTexts.fullName,
            prefixIcon: Icons.person,
            textEditingController: controller.fullName,
            validator: (value) => AppValidation.validateInput(
              value: value!,
              type: InputTypes.fullName,
              inputName: "Full Name",
              min: 6,
              max: 30,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields.h),
          AppTextFormField(
            labelText: AppTexts.labelEmail,
            prefixIcon: Icons.email,
            textInputType: TextInputType.emailAddress,
            textEditingController: controller.email,
            validator: (value) => AppValidation.validateInput(
              value: value!,
              type: InputTypes.email,
              inputName: "Email Address",
              min: 8,
              max: 50,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields.h),
          AppTextFormField(
            labelText: AppTexts.labelPhoneN,
            prefixIcon: Icons.phone,
            textInputType: TextInputType.number,
            textEditingController: controller.phoneNumber,
            validator: (value) => AppValidation.validateInput(
              value: value!,
              type: InputTypes.phone,
              inputName: "Phone Number",
              min: 9,
              max: 11,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields.h),
          Obx(
            () => Column(
              children: [
                AppTextFormField(
                  labelText: AppTexts.labelPassword,
                  prefixIcon: Icons.key,
                  suffixIcon:
                      controller.passwordInvisible.value ? Icons.visibility : Icons.visibility_off,
                  onIconTap: () => controller.togglePassword(),
                  textInputType: TextInputType.text,
                  obscureText: controller.passwordInvisible.value,
                  textEditingController: controller.password,
                  validator: (value) => AppValidation.validatePasswordAndConfirmation(
                    password: controller.password.text,
                    confirmation: controller.passwordConfirmation.text,
                    inputName: "Password",
                    max: 50,
                    min: 8,
                  ),
                ),
                SizedBox(height: AppSizes.spaceBtwInputFields.h),
                AppTextFormField(
                  labelText: AppTexts.labelPasswordConfirmation,
                  prefixIcon: Icons.key,
                  suffixIcon: controller.passwordConfirmationInvisible.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onIconTap: () => controller.togglePasswordConfirmation(),
                  textInputType: TextInputType.text,
                  obscureText: controller.passwordConfirmationInvisible.value,
                  textEditingController: controller.passwordConfirmation,
                  validator: (value) => AppValidation.validatePasswordAndConfirmation(
                    password: controller.password.text,
                    confirmation: controller.passwordConfirmation.text,
                    inputName: "Confirmation",
                    max: 50,
                    min: 8,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          const PrivacyPolicyAndTermsOfUse(),
          SizedBox(height: AppSizes.spaceBtwSections.h * 2),
          AppElevatedButton(
            text: AppTexts.createAccount,
            onPressed: () => controller.signUp(context),
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          AppOutlinedButton(
            text: AppTexts.signIn,
            onPressed: () => Get.offNamed(AppRoutes.signIn),
          ),
        ],
      ),
    );
  }
}
