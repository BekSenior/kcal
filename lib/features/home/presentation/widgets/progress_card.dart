import 'package:flutter/material.dart';

import '../../../../core/theme/color/app_color.dart';
import '../../../widget/widget_button.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: AppColor.violet,
      child: SizedBox(
        height: 90,
        child: Center(
          child: ListTile(
            title: const Text(
              "Track Your Weekly Progress",
              style: TextStyle(
                color: AppColor.white,
                fontFamily: 'Signika-VariableFont',
              ),
            ),
            trailing: WidgetButton(
              text: 'View Now',
              onPressed: () {},
              width: 60,
              height: 40,
              textSize: 14,
              borderRadius: 8,
              color: AppColor.white,
              textButtonColor: AppColor.violet,
            ),
          ),
        ),
      ),
    );
  }
}
