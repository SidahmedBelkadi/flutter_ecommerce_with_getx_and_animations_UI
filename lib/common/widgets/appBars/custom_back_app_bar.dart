import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class CustomSimpleBackAppBar extends StatelessWidget implements PreferredSize {
  const CustomSimpleBackAppBar({
    super.key,
    this.title,
    this.offRoute = false,
    this.routeName,
  });

  final String? title;
  final bool offRoute;
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ""),
      automaticallyImplyLeading: false,
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.clear),
          color: Get.isDarkMode ? AppColors.grey : AppColors.darkerGrey,
          onPressed: () => offRoute ? Get.offNamed(routeName!) : Get.back(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHeight);

  @override
  Widget get child => const Center();
}
