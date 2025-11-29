import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyle {
  static const TextStyle regular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );
  static const TextStyle regular32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static const TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static const TextStyle medium12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static const TextStyle medium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );

  static const TextStyle semiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
  );
  static const TextStyle semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
  );
}