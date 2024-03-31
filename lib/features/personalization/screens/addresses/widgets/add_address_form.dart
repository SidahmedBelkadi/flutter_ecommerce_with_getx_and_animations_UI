import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/validators/app_validator.dart';

class AddAddressForm extends StatelessWidget {
  const AddAddressForm({
    super.key,
  });

  // Todo : Do Not Forget To Handle Validation New Types of the new form

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppTexts.addAddress,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: AppSizes.spaceBtwSections.h),
        AppTextFormField(
          labelText: AppTexts.name,
          prefixIcon: Icons.person,
          // Todo : create TextEditingController
          textEditingController: TextEditingController(),
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.firstName,
            inputName: AppTexts.name,
            min: 6,
            max: 30,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.labelPhoneN,
          prefixIcon: Icons.phone,
          textInputType: TextInputType.number,
          // Todo :
          textEditingController: TextEditingController(),
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.phone,
            inputName: AppTexts.labelPhoneN,
            min: 9,
            max: 11,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                labelText: AppTexts.country,
                prefixIcon: Iconsax.global,
                // todo:
                textEditingController: TextEditingController(),
                validator: (value) => AppValidation.validateInput(
                  value: value!,
                  type: InputTypes.firstName,
                  inputName: AppTexts.country,
                  min: 6,
                  max: 30,
                ),
              ),
            ),
            SizedBox(width: AppSizes.md.w),
            Expanded(
              child: AppTextFormField(
                labelText: AppTexts.state,
                prefixIcon: Iconsax.activity,
                // todo:
                textEditingController: TextEditingController(),
                validator: (value) => AppValidation.validateInput(
                  value: value!,
                  type: InputTypes.firstName,
                  inputName: AppTexts.state,
                  min: 6,
                  max: 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                labelText: AppTexts.city,
                prefixIcon: Iconsax.building,
                // todo:
                textEditingController: TextEditingController(),
                validator: (value) => AppValidation.validateInput(
                  value: value!,
                  type: InputTypes.firstName,
                  inputName: AppTexts.city,
                  min: 6,
                  max: 30,
                ),
              ),
            ),
            SizedBox(width: AppSizes.md.w),
            Expanded(
              child: AppTextFormField(
                labelText: AppTexts.street,
                prefixIcon: Iconsax.building_31,
                // todo:
                textEditingController: TextEditingController(),
                validator: (value) => AppValidation.validateInput(
                  value: value!,
                  type: InputTypes.firstName,
                  inputName: AppTexts.street,
                  min: 6,
                  max: 30,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.postalCode,
          prefixIcon: Iconsax.mobile,
          // Todo : create TextEditingController
          textEditingController: TextEditingController(),
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.firstName,
            inputName: AppTexts.postalCode,
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
