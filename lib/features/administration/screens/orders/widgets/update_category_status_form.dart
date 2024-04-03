import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_texts.dart';

class UpdateOrderStatusForm extends StatelessWidget {
  UpdateOrderStatusForm({super.key});

  // Todo : change this list accordingly
  final testList = ["Pending", "Delivered", "On the way"];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.orderStatus, style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: AppSizes.spaceBtwItems.h),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            value: testList[0],
            items: testList
                .map(
                  (option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ),
                )
                .toList(),
            onChanged: (value) {},
          ),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          AppElevatedButton(
            text: AppTexts.save,
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
