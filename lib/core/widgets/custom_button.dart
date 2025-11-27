import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Widget? icon;
  final double? width;

  const CustomButton({super.key, required this.onPressed, this.width, required this.label, this.icon});

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
      icon: icon,
      label: Text(
        label,
        style: TextStyle(color: AppColors.white, fontSize: 16),
      ),
    );
  }
}
