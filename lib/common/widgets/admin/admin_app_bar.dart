import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AdminAppBar extends StatelessWidget implements PreferredSize {
  const AdminAppBar({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        onPressed: onPressed,
        icon: Icon(
          CupertinoIcons.clear,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget get child => const Center();

  @override
  Size get preferredSize => Size.fromHeight(56.sp);
}
