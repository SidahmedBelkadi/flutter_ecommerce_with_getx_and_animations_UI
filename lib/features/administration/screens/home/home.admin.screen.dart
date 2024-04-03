import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/admin/admin_app_bar.dart';
import '../../../../common/widgets/admin/admin_drawer.dart';
import '../../../../utils/constants/app_texts.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AdminAppBar(
          title: AppTexts.administration,
          onPressed: () => Get.offAllNamed(AppRoutes.account),
        ),
        endDrawer: const AdminstrationDrawer(),
        body: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: Center(
            child: Text(
              "Admin Home here",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
      ),
    );
  }
}
