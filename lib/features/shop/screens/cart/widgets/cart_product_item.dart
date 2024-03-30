import 'package:ecommmerce/features/shop/screens/cart/widgets/product_cart_image.dart';
import 'package:ecommmerce/features/shop/screens/cart/widgets/product_cart_title_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/shadows/card_shadow.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'cart_icon.dart';

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: const EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        boxShadow: [
          buildBoxShadow(),
        ],
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Row(
        children: [
          const ProductCartImage(image: AppImages.laptop),
          SizedBox(width: AppSizes.md.w),
          const ProductCartTitleAndPrice(
            title: "Laptop surface go 03",
            price: "250",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CartIcon(
                color: AppColors.primary,
                icon: Icons.add,
              ),
              const Text("5"),
              CartIcon(
                color: Get.isDarkMode ? AppColors.darkGrey : AppColors.grey,
                icon: Icons.remove,
              ),
            ],
          )
        ],
      ),
    );
  }
}
