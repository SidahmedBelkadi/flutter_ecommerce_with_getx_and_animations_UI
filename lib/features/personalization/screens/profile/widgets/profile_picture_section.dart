import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class ProfilePictureSection extends StatelessWidget {
  const ProfilePictureSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.sp),
          child: Image(
            image: const AssetImage(AppImages.user),
            height: 90.sp,
            width: 90.sp,
            fit: BoxFit.cover,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(AppTexts.changeProfilePicture),
        ),
        const Divider(),
        SizedBox(height: AppSizes.spaceBtwSections.h),
      ],
    );
  }
}
