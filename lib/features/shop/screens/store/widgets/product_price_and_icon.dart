import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductPriceAndIcon extends StatelessWidget {
  const ProductPriceAndIcon({
    super.key,
    required this.price,
    required this.onTap,
  });

  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$price \$",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        GestureDetector(
          onTap: onTap,
          child: const Icon(
            Iconsax.heart5,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
