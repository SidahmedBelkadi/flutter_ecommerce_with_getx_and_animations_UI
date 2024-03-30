import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class AccountAppBar extends StatelessWidget {
  const AccountAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Account",
          style: Theme.of(context).textTheme.headlineMedium!.apply(
                color: AppColors.white,
              ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
