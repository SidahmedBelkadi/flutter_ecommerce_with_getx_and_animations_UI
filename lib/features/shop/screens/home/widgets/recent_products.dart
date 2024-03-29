import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_sizes.dart';

class RecentProducts extends StatelessWidget {
  const RecentProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (_, index) => Container(
          width: 250.h,
          padding: EdgeInsets.all(AppSizes.md.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSizes.productImageRadius,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              AppSizes.productImageRadius,
            ),
            child: const Image(
              image: AssetImage(AppImages.laptop),
              fit: BoxFit.fill,
            ),
          ),
        ),
        separatorBuilder: (_, __) => SizedBox(width: AppSizes.md.h),
      ),
    );
  }
}
