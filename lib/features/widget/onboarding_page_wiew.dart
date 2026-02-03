import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kcal/features/widget/widget_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/theme/color/app_color.dart';
import '../model/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingPage page;

  const OnboardingScreen({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icon/kcal_c.svg'),
          const SizedBox(height: 30),
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
            padding: EdgeInsets.symmetric(horizontal: 24),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: controller,
              count: onboardingPages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.red,
                dotColor: Colors.red.shade200,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          WidgetButton(),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: AppColor.gray,
                fontSize: 18,
                fontFamily: 'Signika-VariableFont',
              ),
              children: [
                TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    color: AppColor.gray,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signika-VariableFont',
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: "Log In",
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signika-VariableFont',
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
