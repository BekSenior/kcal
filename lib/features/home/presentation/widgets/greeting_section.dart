import 'package:flutter/material.dart';

import '../../../../core/theme/color/app_color.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello Umar",
          style: TextStyle(
            color: AppColor.primary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          "Find, track and eat healthy food.",
          style: TextStyle(
            color: AppColor.gray,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
