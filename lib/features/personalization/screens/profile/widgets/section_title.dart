import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.showIcon = false,
    this.icon = CupertinoIcons.pencil_circle_fill,
    this.onTap,
  });

  final String title;

  final bool showIcon;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.spaceBtwItems.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if (showIcon)
              GestureDetector(
                onTap: onTap,
                child: Icon(
                  icon,
                  color: AppColors.primary,
                ),
              ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwSections.h),
      ],
    );
  }
}
