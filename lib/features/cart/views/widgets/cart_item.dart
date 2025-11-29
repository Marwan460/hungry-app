import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/widgets/custom_button.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text_style.dart';

class CartItem extends StatelessWidget {
  final String image, name, desc;
  final int count;
  final Function()? onAdd;
  final Function()? onMinus;
  final Function() onRemove;
  const CartItem({super.key, required this.image, required this.name, required this.desc, required this.count, this.onAdd, this.onMinus, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, width: 100, height: 100),
                Text(name, style: AppTextStyle.semiBold16),
                Text(
                  desc,
                  style: AppTextStyle.regular16.copyWith(
                    color: AppColors.secondary,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    _customIcon(icon: CupertinoIcons.minus, onTap: onMinus),
                    Gap(30),
                    Text(
                      count.toString(),
                      style: AppTextStyle.medium18.copyWith(
                        color: AppColors.secondary,
                      ),
                    ),
                    Gap(30),
                    _customIcon(icon: Icons.add, onTap: onAdd),
                  ],
                ),
                Gap(30),
                CustomButton(
                  onPressed: onRemove,
                  label: 'Remove',
                  color: AppColors.primary,
                  width: 140,
                  height: 44,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _customIcon({Function()? onTap, required IconData icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppColors.white),
      ),
    );
  }
}
