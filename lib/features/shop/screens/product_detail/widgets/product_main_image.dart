import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_sizes.dart';

class ProductMainImage extends StatelessWidget {
  const ProductMainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.sp,
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.md.sp),
      color: Get.isDarkMode ? AppColors.darkContainer : AppColors.lightGrey,
      alignment: Alignment.topCenter,
      child: Image.asset(
        AppImages.laptop,
        height: 170.sp,
        fit: BoxFit.contain,
      ),
    );
  }
}
