import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/common/widgets/buttons/custom_elevated_button.dart';
import 'package:ecommmerce/common/widgets/shadows/card_shadow.dart';
import 'package:ecommmerce/features/shop/screens/cart/widgets/cart_icon.dart';
import 'package:ecommmerce/features/shop/screens/cart/widgets/product_cart_image.dart';
import 'package:ecommmerce/features/shop/screens/cart/widgets/product_cart_title_price.dart';
import 'package:ecommmerce/utils/constants/app_colors.dart';
import 'package:ecommmerce/utils/constants/app_images.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(title: AppTexts.myCart),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.md.sp),
        child: AppElevatedButton(text: "Checkout : 500 \$", onPressed: () {}),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.md,
            AppSizes.md,
            AppSizes.md,
            AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              AnimationLimiter(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) =>
                      AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: const SlideAnimation(
                      horizontalOffset: 100.0,
                      child: FadeInAnimation(
                        child: ProductCartItem(),
                      ),
                    ),
                  ),
                  separatorBuilder: (__, _) =>
                      SizedBox(height: AppSizes.spaceBtwItems.h),
                  itemCount: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
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
