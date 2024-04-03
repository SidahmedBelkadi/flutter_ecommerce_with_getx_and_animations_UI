import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../config/routing/app_routes.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';

class AdminstrationDrawer extends StatelessWidget {
  const AdminstrationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Get.isDarkMode ? AppColors.black : AppColors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    AppTexts.ecommerce,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Iconsax.home, size: 28.sp),
                title: const Text(AppTexts.home),
                onTap: () {
                  Navigator.of(context).pop();
                  Get.offNamed(AppRoutes.adminHome);
                },
              ),
              ListTile(
                leading: Icon(Iconsax.category, size: 28.sp),
                title: const Text(AppTexts.categories),
                onTap: () {
                  Navigator.of(context).pop();
                  Get.toNamed(AppRoutes.adminCategories);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart, size: 28.sp),
                title: const Text(AppTexts.products),
              ),
              ListTile(
                leading: Icon(Icons.local_shipping, size: 28.sp),
                title: const Text(AppTexts.orders),
                onTap: () {
                  Navigator.of(context).pop();
                  Get.offNamed(AppRoutes.adminOrders);
                },
              ),
              ListTile(
                leading: Icon(Iconsax.user, size: 28.sp),
                title: const Text(AppTexts.users),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
