import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../config/routing/app_routes.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class LogoutAndDeleteAccount extends StatelessWidget {
  const LogoutAndDeleteAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppElevatedButton(
            text: AppTexts.logout,
            onPressed: () => Get.offAllNamed(AppRoutes.signIn),
          ),
          TextButton(
            onPressed: () => Get.offAllNamed(AppRoutes.signIn),
            child: Text(
              AppTexts.deleteAccount,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
