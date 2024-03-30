import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';

class ProductCartTitleAndPrice extends StatelessWidget {
  const ProductCartTitleAndPrice({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.apply(
                  color: Get.isDarkMode ? AppColors.grey : AppColors.darkerGrey,
                ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "$price \$",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
