import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/constant/app_text_style.dart';

class TextPrice extends StatelessWidget {
  const TextPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\$', style: AppTextStyle.regular32.copyWith(color: AppColors.primary),),
        Text('18.19', style: AppTextStyle.regular32,)
      ],
    );
  }
}
