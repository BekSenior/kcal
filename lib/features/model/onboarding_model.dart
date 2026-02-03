class OnboardingPage {
  final String title;
  final String description;
  final String image;

  OnboardingPage({
    required this.title,
    required this.description,
    required this.image,
  });
}

final onboardingPages = [
  OnboardingPage(
    title: "Eat Healthy",
    description: "Maintaining good health should be the primary focus of everyone.",
    image: "assets/image/healthy_eat.png",
  ),
  OnboardingPage(
    title: "Healthy Recipes",
    description: "Browse thousands of healthy recipes from all over the world.",
    image: "assets/image/cooking.png",
  ),
  OnboardingPage(
    title: "Track Your Health",
    description: "With amazing inbuilt tools you can track your progress.",
    image: "assets/image/mobile.png",
  ),
];
