import 'package:flutter/material.dart';

import '../widgets/article_card.dart';
import '../widgets/favorites_section.dart';
import '../widgets/greeting_section.dart';
import '../widgets/progress_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              GreetingSection(),
              SizedBox(height: 20),
              ArticleCard(
                title: 'The pros and\ncons of fast food.',
                buttonText: 'Read Now',
                imagePath: 'assets/image/burger.png',
              ),
              SizedBox(height: 20),
              ProgressCard(),
              SizedBox(height: 20),
              FavoritesSection(),
            ],
          ),
        ),
      ),
    );
  }
}





