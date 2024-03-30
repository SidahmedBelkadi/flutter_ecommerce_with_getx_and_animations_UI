import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({super.key, required this.text, this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.sp,
      width: double.infinity,
      child: OutlinedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
