import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'container_footer.dart';
import 'container_header.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.title,
    required this.status,
    required this.orderDate,
    required this.shippingDate,
  });

  final String title;
  final String status;
  final String orderDate;
  final String shippingDate;

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
        color: Get.isDarkMode
            ? AppColors.primary.withOpacity(0.3)
            : Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerHeader(
            title: title,
          ),
          const Spacer(),
          Text(
            "$status...",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const Spacer(),
          ContainerFooter(
            orderDate: orderDate,
            shippingDate: shippingDate,
          ),
        ],
      ),
    );
  }
}
