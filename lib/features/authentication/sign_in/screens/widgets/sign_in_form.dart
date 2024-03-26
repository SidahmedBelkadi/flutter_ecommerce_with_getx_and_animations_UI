import 'package:ecommmerce/features/authentication/sign_in/screens/widgets/remember_me_and_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../common/widgets/buttons/outlined_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            labelText: AppTexts.labelEmail,
            prefixIcon: Icons.email,
            textEditingController: TextEditingController(),
            textInputType: TextInputType.emailAddress,
            validator: (value) {},
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          AppTextFormField(
            labelText: AppTexts.labelPassword,
            prefixIcon: Icons.key,
            suffixIcon: Icons.visibility,
            textEditingController: TextEditingController(),
            textInputType: TextInputType.text,
            obscureText: true,
            validator: (value) {},
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          const RememberMeAndForgetPasswordRow(),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          AppElevatedButton(
            text: AppTexts.signIn,
            onPressed: () {},
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          AppOutlinedButton(
            text: AppTexts.createAccount,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
