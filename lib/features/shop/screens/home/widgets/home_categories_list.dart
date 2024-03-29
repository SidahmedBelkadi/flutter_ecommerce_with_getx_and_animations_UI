import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_sizes.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (_, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              padding: EdgeInsets.all(AppSizes.sm.sp),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.grey,
              ),
              child: SvgPicture.asset(
                AppImages.shoes,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "category",
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        separatorBuilder: (_, __) => SizedBox(width: AppSizes.md.w),
      ),
    );
  }
}
