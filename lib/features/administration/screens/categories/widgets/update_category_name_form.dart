import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/validators/app_validator.dart';

class UpdateCategoryForm extends StatelessWidget {
  const UpdateCategoryForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.categoryName, style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          AppTextFormField(
            labelText: AppTexts.name,
            prefixIcon: Icons.category_rounded,
            textEditingController: TextEditingController(),
            validator: (value) => AppValidation.validateInput(
              value: value!,
              type: InputTypes.name,
              inputName: "Category Name",
              min: 3,
              max: 30,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          AppElevatedButton(
            text: AppTexts.save,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
