import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/custom_widget/custom_onboard.dart';

class OnboardingViewModel extends ChangeNotifier {
  final PageController pageController = PageController();
  int currentIndex = 0;

  final List<OnboardingItem> items = [
    OnboardingItem(
      image: '$staticAssets/cake.png',
      title: 'Freshly Baked Cakes, Made with Love',
      subtitle:
          'Celebrate every moment with our soft\nrich and delicious cakes.',
    ),

    OnboardingItem(
      image: '$staticAssets/donet.png',
      title: 'Sweet Treats, Anytime',
      subtitle:
          'Fluffy, glazed, and irresistible donuts delivered\nto your doorstep.',
    ),
    OnboardingItem(
      image: '$staticAssets/icecream.png',
      title: 'Cool Down with Creamy Delights',
      subtitle: 'From classic vanilla to exotic flavors\nwe’ve got your scoop!',
    ),
  ];

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
