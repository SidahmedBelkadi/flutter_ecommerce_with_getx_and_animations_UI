import 'package:ecommmerce/common/widgets/appBars/custom_back_app_bar.dart';
import 'package:ecommmerce/features/shop/screens/orders/widgets/order_item.dart';
import 'package:ecommmerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomSimpleBackAppBar(title: "My Orders"),
        body: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace.sp),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (_, index) => const OrderItem(
              title: "Apple Macbook Air M2 2023",
              status: 'Pending',
              orderDate: "14, Avril 2023",
              shippingDate: "14, Avril 2023",
            ),
          ),
        ),
      ),
    );
  }
}
