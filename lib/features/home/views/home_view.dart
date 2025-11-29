import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/features/home/widgets/category_list.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/custom_sliver_grid.dart';
import '../widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          floating: false,
          pinned: true,
          toolbarHeight: 150,
          title: Column(
            children: [
              HomeAppBar(),
              Gap(16),
              CustomSearchBar(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Gap(16),
              CategoryList(),
              Gap(16),
            ],
          ),
        ),
        CustomSliverGrid(),

      ],
    );
  }
}

