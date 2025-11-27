import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_text_style.dart';

import '../../../core/constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool? obscureText;
  final Widget? suffixIcon;
  final TextInputType textInputType;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.obscureText,
    this.suffixIcon,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.white,
      keyboardType: textInputType,
      style: AppTextStyle.regular16,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      obscureText: obscureText ?? false,

      decoration: InputDecoration(
        label: Text(
          label,
          style: AppTextStyle.regular16.copyWith(fontWeight: FontWeight.w500),
        ),
        suffixIcon: suffixIcon,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.white, width: 2),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
