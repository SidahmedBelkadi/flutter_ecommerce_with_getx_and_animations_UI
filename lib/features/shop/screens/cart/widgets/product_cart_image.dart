import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_sizes.dart';

class ProductCartImage extends StatelessWidget {
  const ProductCartImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.fill,
        height: 80.h,
        width: 100.h,
      ),
    );
  }
}
