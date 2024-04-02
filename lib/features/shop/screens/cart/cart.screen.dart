import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/common/widgets/buttons/custom_elevated_button.dart';
import 'package:ecommmerce/features/shop/screens/cart/widgets/cart_product_item.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(title: AppTexts.myCart),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.md.sp),
        child: AppElevatedButton(
          text: "Checkout : 500 \$",
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.md,
            AppSizes.xs,
            AppSizes.md,
            AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              AnimationLimiter(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 500),
                    child: SlideAnimation(
                      horizontalOffset: 100.0,
                      child: FadeInAnimation(
                        child: Dismissible(
                            background: Container(
                              color: Colors.red,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.sp),
                              child: const Icon(
                                CupertinoIcons.delete,
                                color: Colors.white,
                              ),
                            ),
                            key: ValueKey<int>(index),
                            onDismissed: (direction) {
                              //   Todo: Implement logic here
                            },
                            child: const ProductCartItem()),
                      ),
                    ),
                  ),
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
