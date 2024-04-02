import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/features/personalization/controllers/adresses/adresses.controller.dart';
import 'package:ecommmerce/features/personalization/screens/addresses/widgets/add_address_form.dart';
import 'package:ecommmerce/features/personalization/screens/addresses/widgets/address_item.dart';
import 'package:ecommmerce/utils/constants/app_colors.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/helpers/bottom_sheet.helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_texts.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AddressesController());
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(
        title: AppTexts.addresses,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            AppBottomSheet.customFormBottomSheet(context: context, form: const AddAddressForm()),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        child: const Icon(Iconsax.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            AppSizes.defaultSpace.sp,
            0,
            AppSizes.defaultSpace.sp,
            AppSizes.defaultSpace.sp,
          ),
          child: AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  const AddressContainer(
                    name: AppTexts.myName,
                    number: AppTexts.myPhone,
                    address: AppTexts.myAddress,
                  ),
                  const AddressContainer(
                    name: AppTexts.myName,
                    number: AppTexts.myPhone,
                    address: AppTexts.myAddress,
                    isSelected: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
