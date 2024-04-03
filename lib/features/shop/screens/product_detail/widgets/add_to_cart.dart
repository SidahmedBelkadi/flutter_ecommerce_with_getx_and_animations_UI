import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../cart/widgets/cart_icon.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CartIcon(
                color: Get.isDarkMode ? AppColors.darkContainer : AppColors.grey,
                icon: Icons.remove,
                iconColor: Get.isDarkMode ? Colors.white : Colors.black,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppSizes.sm.sp),
                child: Text(
                  "5",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const CartIcon(
                color: AppColors.primary,
                icon: Icons.add,
                iconColor: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Iconsax.shopping_cart),
          )
        ],
      ),
    );
  }
}
