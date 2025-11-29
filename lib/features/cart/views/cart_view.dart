import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/features/cart/views/widgets/cart_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CartItem(
            image: AppAssets.test,
            name: 'Hamburger',
            desc: 'Veggie Burger',
            count: 1,
            onRemove: () {},
          ),
        ],
      ),
    );
  }
}
