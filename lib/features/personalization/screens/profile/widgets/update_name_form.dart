import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/validators/app_validator.dart';

class UpdateNameForm extends StatelessWidget {
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
          // Todo : create TextEditingController
          textEditingController: TextEditingController(),

          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.firstName,
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
