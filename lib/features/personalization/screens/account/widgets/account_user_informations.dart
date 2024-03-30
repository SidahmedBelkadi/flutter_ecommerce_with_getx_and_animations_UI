import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_sizes.dart';

class AccountUserInformation extends StatelessWidget {
  const AccountUserInformation({
    super.key,
    required this.email,
    required this.name,
  });

  final String email;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200.sp),
              child: Image(
                image: const AssetImage(AppImages.user),
                height: 60.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: AppSizes.md.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge!.apply(
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
                Text(
                  email,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () => Get.toNamed(AppRoutes.profile),
          icon: const Icon(
            Iconsax.edit,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
