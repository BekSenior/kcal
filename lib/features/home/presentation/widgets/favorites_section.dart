import 'package:flutter/material.dart';

import '../../../../core/widget/favorites_item.dart';

class FavoritesSection extends StatelessWidget {
  const FavoritesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Choose Your Favorites",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        FavoritesItem(),
      ],
    );
  }
}
