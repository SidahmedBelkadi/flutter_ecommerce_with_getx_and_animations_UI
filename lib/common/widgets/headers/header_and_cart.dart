import 'package:badges/badges.dart' as badges;
import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';

class HeaderAndCartIcon extends StatelessWidget {
  const HeaderAndCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppTexts.goodDayForShopping,
                style: Theme.of(context).textTheme.bodySmall),
            Text(AppTexts.myName,
                style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        badges.Badge(
          badgeContent: Text(
            '3',
            style: Theme.of(context).textTheme.labelSmall!.apply(
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                ),
          ),
          position: badges.BadgePosition.topEnd(top: -10, end: -12),
          badgeAnimation: const badges.BadgeAnimation.rotation(
            animationDuration: Duration(seconds: 1),
            colorChangeAnimationDuration: Duration(seconds: 1),
            loopAnimation: false,
            curve: Curves.fastOutSlowIn,
            colorChangeAnimationCurve: Curves.easeInCubic,
          ),
          badgeStyle: badges.BadgeStyle(badgeColor: AppColors.primary),
          child: GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.cart),
            child: const Icon(Iconsax.shopping_cart),
          ),
        )
      ],
    );
  }
}
