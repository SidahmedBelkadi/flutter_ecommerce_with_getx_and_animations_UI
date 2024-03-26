import 'package:ecommmerce/features/authentication/sign_up/controllers/sign_up.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class PrivacyPolicyAndTermsOfUse extends GetView<SignUpController> {
  const PrivacyPolicyAndTermsOfUse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Checkbox(
            value: controller.privacyAndTerms.value,
            onChanged: (value) => controller.togglePrivacyPolicyAndTermsOfUse(),
          ),
        ),
        const Text(AppTexts.iAgreeTo),
        SizedBox(width: AppSizes.xs.w),
        Text(
          AppTexts.privacyPolicy,
          style: Theme.of(context).textTheme.bodySmall!.apply(
                decoration: TextDecoration.underline,
              ),
        ),
        SizedBox(width: AppSizes.xs.w),
        const Text(AppTexts.and),
        SizedBox(width: AppSizes.xs.w),
        Text(
          AppTexts.termsOfUse,
          style: Theme.of(context).textTheme.bodySmall!.apply(
                decoration: TextDecoration.underline,
              ),
        ),
      ],
    );
  }
}
