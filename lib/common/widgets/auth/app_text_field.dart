import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.textEditingController,
    this.obscureText = false,
    required this.validator,
    this.textInputType = TextInputType.text,
    this.onObsecureIconTap,
    this.onIconTap,
  });

  final String labelText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onObsecureIconTap;
  final bool obscureText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String? Function(String?) validator;
  final VoidCallback? onIconTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: textEditingController,
      obscureText: obscureText,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: GestureDetector(onTap: onIconTap, child: Icon(suffixIcon)),
      ),
    );
  }
}
