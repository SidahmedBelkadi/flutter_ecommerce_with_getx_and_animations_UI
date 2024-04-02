import 'package:ecommmerce/features/personalization/controllers/profile/profile.controller.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/profile_menu_item.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/section_title.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/update_name_form.dart';
import 'package:ecommmerce/utils/helpers/bottom_sheet.helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class ProfileInformationsSection extends GetView<ProfileController> {
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
              onTap: () => AppBottomSheet.customFormBottomSheet(
                  context: context, form: const UpdateNameForm()),
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
}
