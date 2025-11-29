import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/constant/app_text_style.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shadowColor: Color(0xff000021),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.test, width: 100, height: 100),
            Gap(8),
            Text('Cheeseburger', style: AppTextStyle.semiBold16,),
            Text('Wendy’s Burger', style: AppTextStyle.regular16.copyWith(color: AppColors.secondary),),
            Gap(4),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Color(0xffFF9633), size: 16,),
                Text('4.5', style: AppTextStyle.medium16.copyWith(color: AppColors.secondary),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
