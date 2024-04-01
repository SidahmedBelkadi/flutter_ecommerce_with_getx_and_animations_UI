import 'package:ecommmerce/features/shop/screens/product_detail/widgets/product_gallery.dart';
import 'package:ecommmerce/features/shop/screens/product_detail/widgets/product_main_image.dart';
import 'package:ecommmerce/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/app_colors.dart';
import 'widgets/add_to_cart.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: const AddToCart(),
      body: const SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ProductMainImage(),
                  ProductGallery(),
                ],
              ),
              ProductMetaData()
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 10,
      backgroundColor:
          Get.isDarkMode ? AppColors.darkContainer : AppColors.lightGrey,
      leading: IconButton(
        icon: const Icon(CupertinoIcons.clear),
        color: Get.isDarkMode ? AppColors.grey : AppColors.darkerGrey,
        onPressed: () => Get.back(),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Iconsax.heart5,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
