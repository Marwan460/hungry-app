import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/app_assets.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_text_style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppAssets.logo,
              height: 30,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            Text('Hello Rich Sonic', style: AppTextStyle.medium18),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 26,
          backgroundColor: AppColors.primary,
          child: Icon(CupertinoIcons.person, color: AppColors.white),
        ),
      ],
    );
  }
}
