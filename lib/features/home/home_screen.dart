import 'package:flutter/material.dart';
import '../../core/theme/color/app_color.dart';
import '../../core/theme/icon/app_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.gray,
        items:  [
          BottomNavigationBarItem(
            activeIcon: AppIcon.homeC,
            icon: AppIcon.home,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: AppIcon.searchC,
            icon: AppIcon.search,
            label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: AppIcon.camera,
            icon: AppIcon.camera,
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            activeIcon: AppIcon.favouriteC,
            icon: AppIcon.favourite,
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            activeIcon: AppIcon.profileC,
            icon: AppIcon.profile,
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
