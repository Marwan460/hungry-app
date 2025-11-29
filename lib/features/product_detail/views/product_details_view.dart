import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/constant/app_text_style.dart';
import 'package:hungry/core/widgets/custom_button.dart';
import 'package:hungry/core/widgets/text_price.dart';
import 'package:hungry/features/product_detail/widgets/spicy_slider.dart';
import 'package:hungry/features/product_detail/widgets/topping_item.dart';
import 'package:hungry/features/product_detail/widgets/toppings_section.dart';

import '../../../core/constant/app_colors.dart';
import '../widgets/side_option_section.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpicySlider(
              value: value,
              onChanged: (v) => setState(() => value = v),
            ),
            Gap(16),
            ToppingsSection(),
            Gap(16),
            SideOptionSection(),
            Gap(16),
            Padding(
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
                    label: 'Add To Cart',
                    width: 200,
                    height: 65,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
