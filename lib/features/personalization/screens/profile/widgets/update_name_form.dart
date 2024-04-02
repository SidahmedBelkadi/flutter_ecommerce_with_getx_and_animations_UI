import 'package:ecommmerce/features/personalization/controllers/profile/profile.controller.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/validators/app_validator.dart';

class UpdateNameForm extends GetView<ProfileController> {
  const UpdateNameForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.editYourName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: AppSizes.spaceBtwSections.h),
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
        SizedBox(height: AppSizes.spaceBtwSections.h),
        AppElevatedButton(
          text: AppTexts.save,
          onPressed: () {},
        )
      ],
    );
  }
}
