import 'package:flutter/material.dart';

import '../../../../core/theme/color/app_color.dart';
import '../../../widget/widget_button.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String buttonText;
  final String imagePath;

  const ArticleCard({
    super.key,
    required this.title,
    required this.buttonText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "ARTICLE",
                style: TextStyle(fontSize: 12, color: Colors.orange),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              WidgetButton(
                text: 'Read Now',
                onPressed: () {},
                width: 60,
                height: 40,
                textSize: 14,
                borderRadius: 8,
                color: AppColor.primaryOrange,
              ),
            ],
          ),
          Image.asset(imagePath, height: 100),
        ],
      ),
    );
  }
}
