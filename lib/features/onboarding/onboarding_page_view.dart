import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/theme/color/app_color.dart';
import '../model/onboarding_model.dart';
import '../widget/widget_button.dart';
import 'onboarding_content.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 32),
        child: Column(
          children: [
            SvgPicture.asset('assets/icon/kcal_c.svg'),
            Expanded(
              child: PageView.builder(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: onboardingPages.length,
                itemBuilder: (context, index) {
                  return OnboardingContent(page: onboardingPages[index]);
                },
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: onboardingPages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.primaryOrange,
                dotColor: AppColor.orangeShadow,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            const SizedBox(height: 20),
            WidgetButton(
              text: "Get Started",
              onPressed: () {
                final nextPage = controller.page!.toInt() + 1;
                if (nextPage < onboardingPages.length) {
                  controller.animateToPage(
                    nextPage,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.pushReplacementNamed(context, "/login");
                }
              },
            ),
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
                      fontSize: 18,
                      fontFamily: 'Signika-VariableFont',
                    ),
                  ),
                  TextSpan(
                    text: "Log In",
                    style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Signika-VariableFont',
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigator.pushNamed(context, "/login");
                      },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}