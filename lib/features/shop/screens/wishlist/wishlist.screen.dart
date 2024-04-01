import 'package:ecommmerce/features/shop/screens/store/widgets/products_grid_layout.dart';
import 'package:ecommmerce/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ProductsGridLayout(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(AppTexts.wishList),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
