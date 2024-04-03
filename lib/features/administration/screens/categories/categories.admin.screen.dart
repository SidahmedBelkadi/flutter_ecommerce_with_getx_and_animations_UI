import 'package:ecommmerce/common/widgets/admin/admin_app_bar.dart';
import 'package:ecommmerce/common/widgets/admin/admin_drawer.dart';
import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:ecommmerce/features/administration/screens/categories/widgets/categories_list.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AdminCategoriesScreen extends StatelessWidget {
  const AdminCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AdminAppBar(
          title: AppTexts.categories,
          onPressed: () => Get.offNamed(AppRoutes.adminHome),
        ),
        endDrawer: const AdminstrationDrawer(),
        body: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: const CategoriesList(),
        ),
      ),
    );
  }
}
