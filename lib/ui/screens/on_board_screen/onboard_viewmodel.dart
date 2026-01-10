import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/custom_widget/custom_onboard.dart';

class OnboardingViewModel extends ChangeNotifier {
  final PageController pageController = PageController();
  int currentIndex = 0;

  final List<OnboardingItem> items = [
    OnboardingItem(
      image: '$staticAssets/cake.png',
      title: 'Welcome to Sweet Bakery',
      subtitle: 'Discover delicious treats made with love.',
    ),
    OnboardingItem(
      image: '$staticAssets/donet.png',
      title: 'Fresh Ingredients',
      subtitle: 'We use only the freshest ingredients in our recipes.',
    ),
    OnboardingItem(
      image: '$staticAssets/icecream.png',
      title: 'Order Online',
      subtitle: 'Conveniently order your favorite baked goods online.',
    ),
  ];

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
