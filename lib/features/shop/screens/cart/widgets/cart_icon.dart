import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_sizes.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
    required this.color,
    required this.icon,
    this.iconColor = Colors.black,
  });

  final Color color;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.sp,
      width: 30.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.sp),
      ),
      child: Icon(
        icon,
        size: AppSizes.iconMd,
        color: iconColor,
      ),
    );
  }
}
