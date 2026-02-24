import 'package:flutter/material.dart';

import '../../core/theme/color/app_color.dart';

class WidgetButton extends StatelessWidget {
  final String text;
  final Color? textButtonColor;
  final double? textSize;
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final Function() onPressed;

  const WidgetButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.color,
    this.textSize,
    this.borderRadius, this.textButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 20)),
        minimumSize: Size(width ?? double.infinity, height ?? 60),
        backgroundColor: color ?? AppColor.primary,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textButtonColor?? Colors.white,
          fontSize : textSize ?? 26,
          fontWeight: FontWeight.bold,
          fontFamily: 'Signika-VariableFont',
        ),
      ),
    );
  }
}
