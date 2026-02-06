import 'package:flutter/material.dart';
import '../../core/theme/color/app_color.dart';
import '../model/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingPage page;

  const OnboardingContent({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(page.image, height: 280),
        const SizedBox(height: 20),
        Text(
          page.title,
          style: const TextStyle(
            fontFamily: 'Signika-VariableFont',
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            page.description,
            style: TextStyle(
              color: AppColor.gray,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Signika-VariableFont',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}