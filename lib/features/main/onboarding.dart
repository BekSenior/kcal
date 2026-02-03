import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/onboarding_model.dart';
import '../widget/onboarding_page_wiew.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: onboardingPages.length,
              itemBuilder: (context, index) {
                return OnboardingScreen(page: onboardingPages[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
