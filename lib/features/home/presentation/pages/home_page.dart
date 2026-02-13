import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              GreetingSection(),
              SizedBox(height: 20),
              ArticleCard(
                title: "The pros and cons of fast food",
                buttonText: "Read Now",
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

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello Jumanji,\nFind, track and eat healthy food.",
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class ArticleCard extends StatelessWidget {
  final String title;
  final String buttonText;
  const ArticleCard({super.key, required this.title, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.fastfood, size: 40),
        title: Text(title),
        trailing: TextButton(onPressed: () {}, child: Text(buttonText)),
      ),
    );
  }
}

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("Track Your Weekly Progress"),
        trailing: TextButton(onPressed: () {}, child: const Text("View Now")),
      ),
    );
  }
}

class FavoritesSection extends StatelessWidget {
  const FavoritesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose Your Favorites",
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        Row(
          children: const [
            FavoritesItem(icon: Icons.local_florist, label: "Fruits"),
            SizedBox(width: 16),
            FavoritesItem(icon: Icons.eco, label: "Vegetables"),
            SizedBox(width: 16),
            FavoritesItem(icon: Icons.cookie, label: "Snacks"),
          ],
        )
      ],
    );
  }
}

class FavoritesItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const FavoritesItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(child: Icon(icon)),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}