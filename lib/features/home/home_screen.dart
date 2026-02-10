import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/color/app_color.dart';
import '../../core/theme/icon/app_icon.dart';
import '../../route/app_routes.dart';

class HomeScreen extends StatelessWidget {
  final Widget child;

  const HomeScreen({super.key, required this.child});

  int _locationToIndex(String location) {
    if (location.startsWith(Routes.search)) return 1;
    if (location.startsWith(Routes.camera)) return 2;
    if (location.startsWith(Routes.favourite)) return 3;
    if (location.startsWith(Routes.profile)) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    final int currentIndex = _locationToIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: AppColor.gray,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            switch (index) {
              case 0:
                context.go(Routes.home);
                break;
              case 1:
                context.go(Routes.search);
                break;
              case 2:
                context.go(Routes.camera);
                break;
              case 3:
                context.go(Routes.favourite);
                break;
              case 4:
                context.go(Routes.profile);
                break;
            }
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 28,
                child: Center(child: AppIcon.homeC),
              ),
              icon: SizedBox(height: 28, child: Center(child: AppIcon.home)),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 28,
                child: Center(child: AppIcon.searchC),
              ),
              icon: SizedBox(height: 28, child: Center(child: AppIcon.search)),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 28,
                child: Center(child: AppIcon.camera),
              ),
              icon: SizedBox(height: 28, child: Center(child: AppIcon.camera)),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 28,
                child: Center(child: AppIcon.favouriteC),
              ),
              icon: SizedBox(
                height: 28,
                child: Center(child: AppIcon.favourite),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 28,
                child: Center(child: AppIcon.profileC),
              ),
              icon: SizedBox(height: 28, child: Center(child: AppIcon.profile)),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
