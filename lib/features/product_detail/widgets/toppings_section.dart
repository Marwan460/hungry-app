import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/product_detail/widgets/topping_item.dart';

import '../../../core/constant/app_text_style.dart';

class ToppingsSection extends StatelessWidget {
  const ToppingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Toppings', style: AppTextStyle.semiBold16.copyWith(fontSize: 18),),
        ),
        Gap(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: List.generate(6, (index) => ToppingItem())),
        ),
      ],
    );
  }
}
