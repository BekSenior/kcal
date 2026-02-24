import 'package:flutter/material.dart';

import '../../core/theme/color/app_color.dart';

class SearchPage extends StatefulWidget {
  final String image;
  final String title;
  const SearchPage({super.key, required this.image, required this.title});

  @override
  State<SearchPage> createState() => _SearchPageState();
}
 List productsImage = [
   'assets/image/burger.png',
   'assets/image/pizza.png',
   'assets/image/strowbary.png'
 ];
 List productsTitle = [
   'Burger',
   'Pizza',
   'Strowbary'
 ];
class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search recipes, articles, people...',
                prefixIcon: const Icon(Icons.search,),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColor.gray50,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Hot Now'),
            const SizedBox(height: 20),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productsImage.length,
              itemBuilder: (context, index) {
                final product = productsImage[index];
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
                            productsImage.toString(),
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
            )
          ],
        ),
      ),
    );
  }
}

