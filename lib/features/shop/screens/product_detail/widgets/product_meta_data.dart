import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Laptop surface pro",
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: AppSizes.md.w),
              Text(
                "265 \$",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          Text(
            AppTexts.description,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  decoration: TextDecoration.underline,
                ),
          ),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          const ReadMoreText(
            AppTexts.loremIpsum,
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimCollapsedText: AppTexts.showMore,
            trimExpandedText: AppTexts.showLess,
            moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: AppColors.primary,
            ),
            lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
