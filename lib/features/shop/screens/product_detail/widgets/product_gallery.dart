import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_images.dart';
import 'gallery_item.dart';

class ProductGallery extends StatelessWidget {
  const ProductGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.sp,
      left: 0,
      right: 0,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GalleryItem(
            image: AppImages.laptop,
          ),
          GalleryItem(
            image: AppImages.laptop,
          ),
          GalleryItem(
            isSelected: true,
            image: AppImages.laptop,
          ),
          GalleryItem(
            image: AppImages.laptop,
          ),
        ],
      ),
    );
  }
}
