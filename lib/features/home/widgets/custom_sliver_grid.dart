import 'package:flutter/material.dart';

import 'card_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
              childCount: 6,
                  (context, index) {
                return CardItem();
              }),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.75
          )
      ),
    );
  }
}
