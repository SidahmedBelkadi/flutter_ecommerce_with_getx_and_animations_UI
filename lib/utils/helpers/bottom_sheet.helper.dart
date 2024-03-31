import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomSheet {
  AppBottomSheet._();

  static customFormBottomSheet(
      {required BuildContext context, required Widget form}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Enable scrolling
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.9,
          minChildSize: 0.9,
          maxChildSize: 0.9,
          // Adjust as needed
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                  AppSizes.defaultSpace.sp,
                  AppSizes.defaultSpace.sp,
                  AppSizes.defaultSpace.sp,
                  MediaQuery.of(context).viewInsets.bottom +
                      AppSizes.defaultSpace.sp,
                ),
                child: form,
              ),
            );
          },
        );
      },
    );
  }
}
