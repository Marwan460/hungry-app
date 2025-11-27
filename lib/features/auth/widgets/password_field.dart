import 'package:flutter/material.dart';
import 'package:hungry/features/auth/widgets/custom_text_form_field.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_text_style.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      label: 'Password',
      textInputType: TextInputType.visiblePassword,
      obscureText: _obscureText,
      suffixIcon: GestureDetector(
        onTap: () {
          _obscureText = !_obscureText;
          setState(() {});
        },
        child: _obscureText
            ? Icon(Icons.remove_red_eye, color: AppColors.white)
            : Icon(Icons.visibility_off, color: AppColors.white),
      ),
    );
  }
}
