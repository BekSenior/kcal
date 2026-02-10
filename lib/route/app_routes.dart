import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/splash/splash_screen.dart';
import '../features/onboarding/onboarding_page_view.dart';
import '../features/home/home_page.dart';
import '../features/search/search_page.dart';
import '../features/camera/camera_page.dart';
import '../features/favourite/favourite_page.dart';
import '../features/profile/profile_page.dart';
import '../features/home/home_screen.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.splash,
  routes: [
    /// Splash
    GoRoute(
      path: Routes.splash,
      name: Routes.splash,
      builder: (_, __) => const SplashScreen(),
    ),

    /// Onboarding
    GoRoute(
      path: Routes.onboarding,
      name: Routes.onboarding,
      builder: (_, __) => const OnboardingPageView(),
    ),

    /// BottomNavigation layout
    ShellRoute(
      builder: (_, __, child) {
        return HomeScreen(child: child);
      },
      routes: [
        GoRoute(
          path: Routes.home,
          name: Routes.home,
          builder: (_, __) => const HomePage(),
        ),
        GoRoute(
          path: Routes.search,
          name: Routes.search,
          builder: (_, __) => const SearchPage(),
        ),
        GoRoute(
          path: Routes.camera,
          name: Routes.camera,
          builder: (_, __) => const CameraPage(),
        ),
        GoRoute(
          path: Routes.favourite,
          name: Routes.favourite,
          builder: (_, __) => const FavouritePage(),
        ),
        GoRoute(
          path: Routes.profile,
          name: Routes.profile,
          builder: (_, __) => const ProfilePage(),
        ),
      ],
    ),
  ],
);
