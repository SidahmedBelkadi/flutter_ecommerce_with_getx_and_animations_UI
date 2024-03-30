import 'package:ecommmerce/common/widgets/headers/header_and_cart.dart';
import 'package:ecommmerce/features/shop/screens/store/widgets/products_grid_layout.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/widgets/search_boxes/products_search_box.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSizes.defaultSpace.sp,
        AppSizes.md.sp,
        AppSizes.defaultSpace.sp,
        AppSizes.defaultSpace.sp,
      ),
      child: Column(
        children: [
          const HeaderAndCartIcon(),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          const SearchBox(),
          SizedBox(height: AppSizes.spaceBtwSections.h),
          const Expanded(
            child: ProductsGridLayout(
              withRefreshIndicator: true,
            ),
          )
        ],
      ),
    );
  }
}
