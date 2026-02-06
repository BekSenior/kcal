import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kcal/core/theme/color/app_color.dart';
import '../onboarding/onboarding_page_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),
     () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingPageView()),
      );
    });

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: SvgPicture.asset(
          'assets/icon/kcal.svg',
          width: 117,
          height: 49,
        ),
      ),
    );
  }
}