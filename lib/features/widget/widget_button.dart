
import 'package:flutter/material.dart';

import '../../core/theme/color/app_color.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: const Size(double.infinity, 62),
        backgroundColor: AppColor.primary,
      ),
      child: Text(
        "Get Started",
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          fontFamily: 'Signika-VariableFont',
        ),
      ),
    );
  }
}
