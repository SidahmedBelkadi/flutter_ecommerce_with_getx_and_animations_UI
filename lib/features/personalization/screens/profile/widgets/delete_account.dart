import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/routing/app_routes.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/dialog.helper.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
      child: TextButton(
        onPressed: () => AppDialog.deleteAccountWarningDialog(
          onConfirm: () => Get.offAllNamed(AppRoutes.signIn),
        ),
        child: Text(
          AppTexts.deleteAccount,
          style:
              Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.red),
        ),
      ),
    );
  }
}
