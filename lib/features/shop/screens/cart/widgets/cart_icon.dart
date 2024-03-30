import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_sizes.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
    required this.color,
    required this.icon,
  });

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        icon,
        size: AppSizes.iconMd,
      ),
    );
  }
}
