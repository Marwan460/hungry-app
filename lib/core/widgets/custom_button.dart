import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final double? width;

  const CustomButton({super.key, required this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? MediaQuery.of(context).size.width, 50),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.white, width: 2),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(Icons.login_outlined, color: AppColors.white, size: 24),
      label: Text(
        'Login',
        style: TextStyle(color: AppColors.white, fontSize: 16),
      ),
    );
  }
}
