import 'package:ecommmerce/features/shop/screens/store/widgets/product_price_and_icon.dart';
import 'package:ecommmerce/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/shadows/card_shadow.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'card_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
          boxShadow: [buildBoxShadow()]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CardImage(image: AppImages.laptop),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSizes.sm.h),
                  buildProductTitle(context, title: "laptop surface"),
                  const Spacer(),
                  ProductPriceAndIcon(price: '256', onTap: () {})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Text buildProductTitle(BuildContext context, {required String title}) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
