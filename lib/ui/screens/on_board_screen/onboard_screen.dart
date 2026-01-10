import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sweetbakery/core/custom_widget/custom_onboard.dart';
import 'package:sweetbakery/ui/screens/on_board_screen/onboard_viewmodel.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingViewModel(),
      child: Consumer<OnboardingViewModel>(
        builder: (context, value, child) => Scaffold(
          body: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: value.pageController,
                  onPageChanged: value.onPageChanged,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(value.items[index].image, height: 250),
                        const SizedBox(height: 30),
                        SmoothPageIndicator(
                          controller: value.pageController,
                          count: value.items.length,
                          effect: WormEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            activeDotColor: Colors.black,
                            dotColor: Colors.indigo,
                          ),
                        ),

                        Text(
                          value.items[index].title,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          value.items[index].subtitle,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
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
}
