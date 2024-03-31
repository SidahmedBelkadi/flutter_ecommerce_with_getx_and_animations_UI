import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/delete_account.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/profile_informations_section.dart';
import 'package:ecommmerce/features/personalization/screens/profile/widgets/profile_picture_section.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSimpleBackAppBar(
        title: AppTexts.profile,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: const SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // -- Profile Picture
                ProfilePictureSection(),

                ProfileInformationsSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const DeleteAccount(),
    );
  }
}
