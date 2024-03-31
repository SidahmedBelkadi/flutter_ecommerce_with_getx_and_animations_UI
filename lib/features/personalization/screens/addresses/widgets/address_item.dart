import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'container_header.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
    required this.name,
    required this.number,
    required this.address,
    this.isSelected = false,
  });

  final String name;
  final String number;
  final String address;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.h,
      padding: EdgeInsets.all(AppSizes.md.sp),
      margin: EdgeInsets.only(top: AppSizes.spaceBtwItems.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        border: Border.all(
          color: AppColors.grey,
        ),
        color: isSelected
            ? Get.isDarkMode
                ? AppColors.darkContainer
                : AppColors.primary.withOpacity(0.3)
            : Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddressContainerHeader(
            name: name,
          ),
          const Spacer(),
          Text(
            number,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const Spacer(),
          Text(
            address,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
