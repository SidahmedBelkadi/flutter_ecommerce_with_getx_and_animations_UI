import 'package:ecommmerce/features/personalization/screens/account/widgets/account_header.dart';
import 'package:ecommmerce/features/personalization/screens/account/widgets/account_settings_section.dart';
import 'package:ecommmerce/features/personalization/screens/account/widgets/logout_and_delete_account.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AccountHeader(),
              SizedBox(height: AppSizes.spaceBtwItems.h),
              const AccountSettings()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const LogoutAndDeleteAccount(),
    );
  }
}