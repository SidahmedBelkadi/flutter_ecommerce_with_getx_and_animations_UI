import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_sizes.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(AppSizes.borderRadiusLg),
        bottomRight: Radius.circular(AppSizes.borderRadiusLg),
      ),
      child: Image(
        image: AssetImage(image),
        height: 200.h,
        fit: BoxFit.fill,
      ),
    );
  }
}
