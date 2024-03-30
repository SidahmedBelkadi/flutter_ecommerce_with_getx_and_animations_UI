import 'package:ecommmerce/features/shop/screens/store/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../../utils/constants/app_sizes.dart';

class ProductsGridLayout extends StatelessWidget {
  const ProductsGridLayout({
    super.key,
    this.withRefreshIndicator = false,
  });

  final bool withRefreshIndicator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AnimationLimiter(
        child: withRefreshIndicator
            ? RefreshIndicator(
                onRefresh: () async {},
                child: const CustomGridView(),
              )
            : const CustomGridView(),
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 260.h,
        mainAxisSpacing: AppSizes.gridViewSpacing,
        crossAxisSpacing: AppSizes.gridViewSpacing,
      ),
      itemCount: 5,
      itemBuilder: (_, int index) => AnimationConfiguration.staggeredGrid(
        position: index,
        columnCount: 2,
        duration: const Duration(milliseconds: 500),
        child: const SlideAnimation(
          verticalOffset: 100.0,
          child: FadeInAnimation(
            child: ScaleAnimation(
              child: ProductCard(),
            ),
          ),
        ),
      ),
    );
  }
}
