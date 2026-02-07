import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/home/home_screen.dart';
import '../features/onboarding/onboarding_page_view.dart';
import '../features/splash/splash_screen.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  initialLocation: Routes.splash,
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.splash,
      name: Routes.splash,
      builder: (_, __) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.onboarding,
      name: Routes.onboarding,
      builder: (_, _) => const OnboardingPageView(),
    ),
    GoRoute(
      path: Routes.home,
      name: Routes.home,
      builder: (_, __) => const HomeScreen(),
    ),
  ],
);
