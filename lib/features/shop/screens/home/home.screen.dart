import 'package:ecommmerce/common/widgets/headers/header_and_cart.dart';
import 'package:ecommmerce/features/shop/controllers/home/home.controller.dart';
import 'package:ecommmerce/features/shop/screens/home/widgets/home_banner.dart';
import 'package:ecommmerce/features/shop/screens/home/widgets/home_categories_list.dart';
import 'package:ecommmerce/features/shop/screens/home/widgets/recent_products.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          AppSizes.defaultSpace.sp,
          AppSizes.md.sp,
          AppSizes.defaultSpace.sp,
          AppSizes.defaultSpace.sp,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderAndCartIcon(),
              SizedBox(height: AppSizes.spaceBtwSections.h),
              const HomeBanner(),
              SizedBox(height: AppSizes.spaceBtwSections.h),
              categoriesTitle(context),
              SizedBox(height: AppSizes.spaceBtwItems.h),
              const CategoriesList(),
              SizedBox(height: AppSizes.spaceBtwSections.h * 1.5),
              recentProductsTitle(context),
              SizedBox(height: AppSizes.spaceBtwItems.h),
              const RecentProducts()
            ],
          ),
        ),
      ),
    );
  }

  Text recentProductsTitle(BuildContext context) {
    return Text(
      AppTexts.recentProducts,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  Text categoriesTitle(BuildContext context) {
    return Text(
      AppTexts.categories,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
