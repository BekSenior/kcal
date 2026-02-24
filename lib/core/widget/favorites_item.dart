import 'package:flutter/material.dart';

import '../../features/model/favourite_item_model.dart';
import '../theme/color/app_color.dart';

class FavoritesItem extends StatefulWidget {
  const FavoritesItem({super.key});

  @override
  State<FavoritesItem> createState() => _FavoritesItemState();
}

class _FavoritesItemState extends State<FavoritesItem> {
  List<FavoritesItemModel> products = [
    FavoritesItemModel(
      title: 'Fruits',
      image: 'assets/image/strowbary.png',
      color: AppColor.orangeShadow,
    ),
    FavoritesItemModel(
      title: 'Vegetables',
      image: 'assets/image/cabbage.png',
      color: AppColor.violet,
    ),
    FavoritesItemModel(
      title: 'Snacks',
      image: 'assets/image/pizza.png',
      color: AppColor.primary,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 144,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            width: 128,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(32),
            ),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      product.image,
                      width: 54,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  textAlign: TextAlign.center,
                  product.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

