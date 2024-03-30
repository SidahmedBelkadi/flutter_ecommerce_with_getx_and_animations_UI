import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'account_appbar.dart';
import 'account_user_informations.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.sp,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.md.sp,
        vertical: AppSizes.sm.sp,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppSizes.borderRadiusLg * 2.sp),
          bottomRight: Radius.circular(AppSizes.borderRadiusLg * 2.sp),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AccountAppBar(),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          const AccountUserInformation(
            name: "Sidahmed Belkadi",
            email: "sidahmed.belkadi0@gmail.com",
          ),
        ],
      ),
    );
  }
}
