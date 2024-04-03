import 'package:ecommmerce/common/widgets/admin/admin_drawer.dart';
import 'package:ecommmerce/features/administration/screens/orders/widgets/orders_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/admin/admin_app_bar.dart';
import '../../../../common/widgets/search_boxes/products_search_box.dart';
import '../../../../config/routing/app_routes.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/app_texts.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        title: AppTexts.orders,
        onPressed: () => Get.offNamed(AppRoutes.adminHome),
      ),
      endDrawer: const AdminstrationDrawer(),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
        child: Column(
          children: [
            const SearchBox(hint: "Search for orders.."),
            SizedBox(height: AppSizes.md.h),
            const OrdersList(),
          ],
        ),
      ),
    );
  }
}
