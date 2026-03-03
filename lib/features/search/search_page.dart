import 'package:flutter/material.dart';
import '../model/product_model.dart';

class SearchPage extends StatefulWidget {
  final String image;
  final String title;

  const SearchPage({super.key, required this.image, required this.title});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  final List<Product> products = [
    Product(image: "assets/image/pumpkin.png", title: "The Pumpkins Secrets"),
    Product(image: "assets/image/pumpkin.png", title: "Green Secrets"),
    Product(image: "assets/image/pumpkin.png", title: "Healthy Food"),
  ];

  final List<String> trending = [
    "best vegetable recipes",
    "cool season vegetables",
    "chicken recipes with eggs",
    "soups",
  ];

  String query = "";

  @override
  Widget build(BuildContext context) {
    final filtered = products.where((e) => e.title.toLowerCase().contains(query.toLowerCase())).toList();

    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        onChanged: (value) {
                          setState(() {
                            query = value;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "Search recipes, articles, people...",
                          border: InputBorder.none,
                          isCollapsed: true,
                        ),
                      ),
                    ),
                    if (query.isNotEmpty)
                      GestureDetector(
                        onTap: () {
                          _controller.clear();
                          setState(() {
                            query = "";
                          });
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              if (query.isEmpty) ...[
                const Text(
                  "Hot Now",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 16),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 240,
                        child: _buildCard(products[index]),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  "Trending",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                ...trending.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Text(e, style: const TextStyle(
                        color: Color(0xffFF6B6B),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],

              if (query.isNotEmpty)
                Expanded(
                  child: filtered.isEmpty
                      ? const Center(
                          child: Text(
                            "No Results Found",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: filtered.length,
                          itemBuilder: (context, index) {
                            final item = filtered[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    item.image,
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(
                                  item.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(Product product) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(product.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          product.title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        const SizedBox(height: 4),
        const Text(
          "The Pumpkins Secrets",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
