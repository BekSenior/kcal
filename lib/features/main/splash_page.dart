
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kcal/core/theme/color/app_color.dart';

import 'onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingPageView()),
      );
    });

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SvgPicture.asset(
              'assets/icon/kcal.svg',
              width: 117,
              height: 49,
            ),
          ],
        ),
      ),
    );
  }
}
