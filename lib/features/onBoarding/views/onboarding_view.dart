import 'package:flutter/material.dart';
import '../viewmodels/onboarding_viewmodel.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final OnboardingViewModel vm = OnboardingViewModel();

  void nextPage() {
    if (vm.currentPage < vm.pages.length - 1) {
      vm.pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context); // or navigate to home
    }
  }

  @override
  void dispose() {
    vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView
          PageView.builder(
            controller: vm.pageController,
            itemCount: vm.pages.length,
            onPageChanged: (index) {
              setState(() {
                vm.currentPage = index;
              });
            },
            itemBuilder: (_, index) {
              return Image.asset(
                vm.pages[index].image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),

          // BottomSheet
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Dots Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(vm.pages.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: vm.currentPage == index ? 30 : 2,
                        height: 2,
                        decoration: BoxDecoration(
                          color: vm.currentPage == index
                              ? const Color(0xFFEDDF99)
                              : Colors.grey.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),

                  // Title
                  Text(
                    vm.pages[vm.currentPage].title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Paragraph
                  Text(
                    vm.pages[vm.currentPage].description,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  // Button
                  ElevatedButton(
                    onPressed: nextPage,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color(0xFFEDDF99),
                      minimumSize: const Size(400, 60),
                    ),
                    child: Text(
                      vm.currentPage == vm.pages.length - 1
                          ? "Get Started"
                          : "Next",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
