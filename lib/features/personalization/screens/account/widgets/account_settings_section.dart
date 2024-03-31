import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../config/routing/app_routes.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import 'account_tile_item.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.md.sp),
      child: AnimationLimiter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
              children: [
                Text(
                  AppTexts.accountSettings,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: AppSizes.spaceBtwItems.h),
                AccountTileItem(
                  icon: Iconsax.safe_home,
                  title: AppTexts.myAddressesTitle,
                  subTitle: AppTexts.myAddressesSubTitle,
                  onTap: () => Get.toNamed(AppRoutes.addresses),
                ),
                AccountTileItem(
                  icon: Iconsax.shopping_cart,
                  title: AppTexts.myCartTitle,
                  subTitle: AppTexts.myCartSubTitle,
                  onTap: () => Get.toNamed(AppRoutes.cart),
                ),
                AccountTileItem(
                  icon: Iconsax.bag_tick,
                  title: AppTexts.myOrdersTitle,
                  subTitle: AppTexts.myOrdersSubTitle,
                  onTap: () => Get.toNamed(AppRoutes.orders),
                ),
                AccountTileItem(
                  icon: Iconsax.notification,
                  title: "Notifications",
                  subTitle: "Set any kind of notification message",
                  onTap: () {},
                ),
              ]),
        ),
      ),
    );
  }
}
