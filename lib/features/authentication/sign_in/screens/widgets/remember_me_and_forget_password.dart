import 'package:ecommmerce/features/authentication/sign_in/controllers/sign_in.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_texts.dart';

class RememberMeAndForgetPasswordRow extends GetView<SignInController> {
  const RememberMeAndForgetPasswordRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Obx(
              () => Row(
                children: [
                  Checkbox(
                    value: controller.rememberMe.value,
                    onChanged: (value) => controller.toggleRememberMe(),
                  ),
                  GestureDetector(
                    onTap: () => controller.toggleRememberMe(),
                    child: Text(
                      AppTexts.rememberMe,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            AppTexts.forgetPassword,
            style: TextStyle(
              color: AppColors.primary,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
