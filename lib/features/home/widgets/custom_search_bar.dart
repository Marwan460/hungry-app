import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      viewBackgroundColor: AppColors.white,
      dividerColor: Colors.transparent,
      isFullScreen: false,
      barHintText: 'Search',
      barElevation: WidgetStatePropertyAll(2),
      barShape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      barBackgroundColor: WidgetStatePropertyAll(AppColors.white),
      suggestionsBuilder: (context, controller) {
        return List<Widget>.generate(6, (index) {
          return ListTile();
        });
      },
    );
  }
}
