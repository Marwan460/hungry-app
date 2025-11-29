import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/features/auth/views/profile_view.dart';
import 'package:hungry/features/cart/views/cart_view.dart';
import 'package:hungry/features/home/views/home_view.dart';
import 'package:hungry/features/order_history/views/order_history_view.dart';
import 'core/constant/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    HomeView(),
    CartView(),
    OrderHistoryView(),
    ProfileView(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: AppColors.primary,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: AppColors.white,
            unselectedItemColor: Colors.grey.shade700,
            onTap: (index) {
              setState(() => _currentIndex = index);
            },
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,

            elevation: 0,
            items: [
              buildBottomNavigationBarItem(
                index: 0,
                label: 'Home',
                icon: Icon(CupertinoIcons.home),
              ),
              buildBottomNavigationBarItem(
                index: 1,
                label: 'Cart',
                icon: Icon(CupertinoIcons.cart),
              ),
              buildBottomNavigationBarItem(
                index: 2,
                label: 'Order History',
                icon: Icon(Icons.local_restaurant_sharp),
              ),
              buildBottomNavigationBarItem(
                index: 3,
                label: 'Profile',
                icon: Icon(CupertinoIcons.profile_circled),
              ),
            ],
          ),
        ),
        body: SafeArea(child: SafeArea(child: _screens[_currentIndex])),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String label,
    required Widget icon,
    required int index,
  }) => BottomNavigationBarItem(icon: icon, label: label);
}
