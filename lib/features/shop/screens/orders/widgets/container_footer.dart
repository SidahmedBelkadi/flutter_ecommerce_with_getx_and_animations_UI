import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_sizes.dart';

class ContainerFooter extends StatelessWidget {
  const ContainerFooter({
    super.key,
    required this.orderDate,
    required this.shippingDate,
  });

  final String orderDate;
  final String shippingDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Shipping date : $shippingDate",
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: AppSizes.md.w),
        Expanded(
          child: Text(
            "Order date : $orderDate",
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
