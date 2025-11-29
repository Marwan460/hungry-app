import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

import '../../../core/constant/app_assets.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_text_style.dart';

class SpicySlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  const SpicySlider({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.test2, width: 150, height: 200),
        Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Customize ',
                    style: AppTextStyle.semiBold16.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextSpan(
                    text:
                    'Your Burger\n to Your Tastes.\n Ultimate Experience',
                    style: AppTextStyle.regular14,
                  ),
                ],
              ),
            ),
            Slider(
              min: 0,
              max: 1,
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.primary,
            ),
            Row(
              children: [
                Text("🥶"),
                Gap(100),
                Text("🌶️"),
              ],
            )
          ],
        ),
      ],
    );
  }
}


