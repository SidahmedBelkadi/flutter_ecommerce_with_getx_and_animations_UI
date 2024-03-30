import 'package:ecommmerce/common/widgets/buttons/custom_elevated_button.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/profile_menu_item.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../../common/widgets/auth/app_text_field.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/validators/app_validator.dart';

class ProfileInformationsSection extends StatelessWidget {
  const ProfileInformationsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 375),
          childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 50.0,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            // -- Profile Information
            SectionTitle(
              title: AppTexts.profileInformation,
              showIcon: true,
              onTap: () => _displayBottomSheet(context),
            ),
            const ProfileMenuItem(
              attribute: AppTexts.fullName,
              value: AppTexts.myName,
            ),
            SizedBox(height: AppSizes.spaceBtwSections.h * 2),
            const Divider(),

            // -- Personal Information
            const SectionTitle(title: AppTexts.personalInformation),
            const ProfileMenuItem(
              attribute: AppTexts.labelEmail,
              value: AppTexts.myEmail,
            ),
            SizedBox(height: AppSizes.spaceBtwItems.h),
            const ProfileMenuItem(
              attribute: AppTexts.labelPhoneN,
              value: AppTexts.myPhone,
            ),

            SizedBox(height: AppSizes.spaceBtwItems.h),
            const ProfileMenuItem(
              attribute: AppTexts.labelDateOfBirth,
              value: AppTexts.dateOfBirth,
            ),
            SizedBox(height: AppSizes.spaceBtwItems.h),
            const Divider(),
          ],
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      barrierColor: Colors.black87,
      builder: (context) => Container(
        height: 300.sp,
        padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
        child: Column(
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
            const Spacer(),
            AppElevatedButton(
              text: AppTexts.save,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
