import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcal/core/theme/color/app_color.dart';
import 'package:kcal/core/theme/icon/app_icon.dart';
import '../../route/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed( Duration(seconds: 3),
     () {
      context.go(Routes.onboarding);
    });

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: SizedBox(
          width: 117,
          height: 49,
          child: AppIcon.kcal,
        ),
      ),
    );
  }
}