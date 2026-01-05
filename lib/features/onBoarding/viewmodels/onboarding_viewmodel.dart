import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';

class OnboardingViewModel extends ChangeNotifier {
  final PageController pageController = PageController();
  int currentPage = 0;

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: 'assets/images/onBoarding1.png',
      title: 'Welcome to App',
      description:
          'Welcome! This app will help you manage tasks, organize your schedule, and keep your life on track. Swipe left to continue.Discover amazing features like smart notifications, task prioritization, and detailed analytics that make your workflow smoother.Discover amazing features like smart notifications, task prioritization, and detailed analytics that make your workflow smoother.Discover amazing features like smart notifications, task prioritization, and detailed analytics that make your workflow smoother.',
    ),
    OnboardingModel(
      image: 'assets/images/onBoarding2.png',
      title: 'Discover Features',
      description:
          'Discover amazing features like smart notifications, task prioritization, and detailed analytics that make your workflow smoother.',
    ),
    OnboardingModel(
      image: 'assets/images/onBoarding3.png',
      title: 'Get Started',
      description:
          'Get started today and enjoy a seamless experience. Press the button below to enter the app.',
    ),
  ];

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  void nextPage(BuildContext context) {
    if (currentPage < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context); // or navigate to home screen
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
