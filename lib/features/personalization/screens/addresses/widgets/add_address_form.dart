import 'package:ecommmerce/features/personalization/controllers/adresses/adresses.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/validators/app_validator.dart';

class AddAddressForm extends GetView<AddressesController> {
  const AddAddressForm({
    super.key,
  });

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
          prefixIcon: Iconsax.personalcard,
          textEditingController: controller.name,
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.name,
            inputName: AppTexts.name,
            min: 6,
            max: 60,
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
            inputName: AppTexts.labelPhoneN,
            min: 9,
            max: 11,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.country,
          prefixIcon: Iconsax.global,
          textEditingController: controller.country,
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.country,
            inputName: AppTexts.country,
            min: 3,
            max: 50,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.state,
          prefixIcon: Iconsax.activity,
          textEditingController: controller.state,
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.state,
            inputName: AppTexts.state,
            min: 4,
            max: 50,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.city,
          prefixIcon: Iconsax.building,
          textEditingController: controller.city,
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.city,
            inputName: AppTexts.city,
            min: 4,
            max: 50,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.street,
          prefixIcon: Iconsax.building_31,
          textEditingController: controller.street,
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.street,
            inputName: AppTexts.street,
            min: 5,
            max: 150,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields.h),
        AppTextFormField(
          labelText: AppTexts.postalCode,
          prefixIcon: Iconsax.mobile,
          textEditingController: controller.postalCode,
          textInputType: TextInputType.number,
          validator: (value) => AppValidation.validateInput(
            value: value!,
            type: InputTypes.postalCode,
            inputName: AppTexts.postalCode,
            min: 3,
            max: 20,
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
