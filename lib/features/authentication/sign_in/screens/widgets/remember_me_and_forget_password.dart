import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_texts.dart';

class RememberMeAndForgetPasswordRow extends StatelessWidget {
  const RememberMeAndForgetPasswordRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            Text(
              AppTexts.rememberMe,
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            AppTexts.forgetPassword,
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
