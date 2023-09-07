import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final introkey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19,
      ),
      bodyPadding: EdgeInsets.fromLTRB(
        16,
        0,
        16,
        16,
      ),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: <PageViewModel>[
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
          image: SvgPicture.asset(
            "assets/images/SplashScreen1.svg",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big Discount',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
          image: SvgPicture.asset(
            "assets/images/SplashScreen2.svg",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'free delivery',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
          image: SvgPicture.asset(
            "assets/images/SplashScreen3.svg",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 50,
            ),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen(),
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(
                  55,
                ),
                backgroundColor: const Color(
                  0xFFEF6969,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
              child: const Text(
                'Lets Shop',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      // showNextButton: false,
      back: const Text(
        'Back',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(
            0xFFEF6969,
          ),
        ),
      ),
      next: const Text(
        'Next',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(
            0xFFEF6969,
          ),
        ),
      ),

      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: const Size.square(
          10,
        ),
        activeSize: const Size(
          20,
          10,
        ),
        activeColor: const Color(
          0xFFEF6969,
        ),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(
          horizontal: 3,
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
      ),
    );
  }
}
