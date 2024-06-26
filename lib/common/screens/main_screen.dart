import 'package:ecommmerce/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../features/personalization/screens/account/account.screen.dart';
import '../../features/shop/screens/home/home.screen.dart';
import '../../features/shop/screens/store/store.screen.dart';
import '../../features/shop/screens/wishlist/wishlist.screen.dart';
import '../../utils/constants/app_sizes.dart';
import '../../utils/constants/app_texts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = Get.isDarkMode;

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) => controller.onDestinationSelected(value),
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor: Colors.transparent,
          indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          destinations: [
            BottomNavigationItemWrapper(
              darkMode: darkMode,
              selectedIndex: controller.selectedIndex.value,
              itemIndex: 0,
              child: NavigationDestination(
                icon: Icon(
                  controller.selectedIndex.value == 0 ? Iconsax.home5 : Iconsax.home,
                  color: AppColors.primary,
                ),
                label: AppTexts.home,
              ),
            ),
            BottomNavigationItemWrapper(
              darkMode: darkMode,
              selectedIndex: controller.selectedIndex.value,
              itemIndex: 1,
              child: NavigationDestination(
                  icon: Icon(
                    controller.selectedIndex.value == 1 ? Iconsax.shop5 : Iconsax.shop,
                    color: AppColors.primary,
                  ),
                  label: AppTexts.store),
            ),
            BottomNavigationItemWrapper(
              darkMode: darkMode,
              selectedIndex: controller.selectedIndex.value,
              itemIndex: 2,
              child: NavigationDestination(
                  icon: Icon(
                    controller.selectedIndex.value == 2 ? Iconsax.heart5 : Iconsax.heart,
                    color: AppColors.primary,
                  ),
                  label: AppTexts.wishList),
            ),
            BottomNavigationItemWrapper(
              darkMode: darkMode,
              selectedIndex: controller.selectedIndex.value,
              itemIndex: 3,
              child: NavigationDestination(
                  icon: Icon(
                    controller.selectedIndex.value == 3 ? Icons.person_2 : Iconsax.user,
                    color: AppColors.primary,
                  ),
                  label: AppTexts.account),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Obx(() => controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class BottomNavigationItemWrapper extends StatelessWidget {
  const BottomNavigationItemWrapper(
      {super.key,
      required this.child,
      required this.darkMode,
      required this.selectedIndex,
      required this.itemIndex});

  final Widget child;
  final bool darkMode;
  final int selectedIndex;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == itemIndex;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.sp),
      child: isSelected
          ? Container(
              decoration: BoxDecoration(
                border: Border(
                  top: isSelected
                      ? const BorderSide(
                          width: 3,
                          color: AppColors.primary,
                        )
                      : BorderSide.none,
                ),
              ),
              child: child,
            ).animate().scale().then().shake()
          : AnimatedContainer(
              decoration: BoxDecoration(
                border: Border(
                  top: isSelected
                      ? const BorderSide(
                          width: 3,
                          color: AppColors.primary,
                        )
                      : BorderSide.none,
                ),
              ),
              duration: const Duration(seconds: 1),
              child: child,
            ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const AccountScreen(),
  ];

  void onDestinationSelected(value) {
    selectedIndex.value = value;
  }
}
