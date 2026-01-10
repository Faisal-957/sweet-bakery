import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sweetbakery/core/constant/string.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Freshly Baked Cakes, Made with Love',
            body:
                'Celebrate every moment with our soft,\nrich and delicious cakes.',
            image: Image.asset('$staticAssets/cake.png'),
          ),
          PageViewModel(
            title: 'Cool Down with Creamy Delights',
            body: 'From classic vanilla to exotic flavorswe’ve got your scoop!',
            image: Image.asset('$staticAssets/icecream.png'),
          ),
          PageViewModel(
            title: 'Sweet Treats, Anytime',
            body:
                'Fluffy, glazed, and irresistible donuts delivered\nto your doorstep.',
            image: Image.asset('$staticAssets/donet.png'),
          ),
        ],
        onDone: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
