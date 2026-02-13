import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/icon/app_icon.dart';
import '../../../../route/app_routes.dart';
import '../../../model/nav_item_model.dart';

class HomeScreen extends StatelessWidget {
  final Widget child;
  const HomeScreen({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    final tabs = [
      NavItem(Routes.home, AppIcon.home, AppIcon.homeC),
      NavItem(Routes.search, AppIcon.search, AppIcon.searchC),
      NavItem(Routes.camera, AppIcon.camera, AppIcon.camera),
      NavItem(Routes.favourite, AppIcon.favourite, AppIcon.favouriteC),
      NavItem(Routes.profile, AppIcon.profile, AppIcon.profileC),
    ];

    final currentIndex = tabs.indexWhere((t) => location.startsWith(t.route));
    final safeIndex = currentIndex == -1 ? 0 : currentIndex;
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: safeIndex,
        onTap: (index) => context.go(tabs[index].route),
        items: tabs.map((t) {
          return BottomNavigationBarItem(
            activeIcon: SizedBox(height: 28, child: Center(child: t.activeIcon)),
            icon: SizedBox(height: 28, child: Center(child: t.icon)),
            label: '',
          );
        }).toList(),
      ),
    );
  }
}