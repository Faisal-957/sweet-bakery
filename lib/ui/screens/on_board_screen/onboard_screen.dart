import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sweetbakery/core/constant/text_style.dart';
import 'package:sweetbakery/ui/screens/on_board_screen/onboard_viewmodel.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingViewModel(),
      child: Consumer<OnboardingViewModel>(
        builder: (context, value, child) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Skip", style: style20),
                  ),
                ),

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
                          SizedBox(height: 40),
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
                          SizedBox(height: 40),

                          Text(value.items[index].title, style: style20),

                          const SizedBox(height: 15),
                          Text(
                            value.items[index].subtitle,
                            style: style16,
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
      ),
    );
  }
}
