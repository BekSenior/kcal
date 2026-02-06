import 'package:flutter/material.dart';

import '../../core/theme/color/app_color.dart';

class WidgetButton extends StatelessWidget {
  final String text;
   final  Function() onPressed;
  const WidgetButton({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: const Size(double.infinity, 62),
        backgroundColor: AppColor.primary,
      ),
      child: Text(
        text,
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
