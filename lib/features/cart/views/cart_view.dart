import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/features/cart/views/widgets/cart_item.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/widgets/price_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 100,
        color: AppColors.white,
        child: PriceSection(label: 'Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(6, (index) => CartItem(
              image: AppAssets.test,
              name: 'Hamburger',
              desc: 'Veggie Burger',
              count: 1,
              onRemove: () {},
            )),
          ),
        ),
      ),
    );
  }
}
