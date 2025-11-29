import 'package:flutter/material.dart';
import 'package:hungry/core/widgets/text_price.dart';

import '../constant/app_colors.dart';
import '../constant/app_text_style.dart';
import 'custom_button.dart';

class PriceSection extends StatelessWidget {
  final String label;
  const PriceSection({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total', style: AppTextStyle.semiBold18),
              TextPrice(),
            ],
          ),
          CustomButton(
            onPressed: () {},
            label: label,
            width: 200,
            height: 65,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
