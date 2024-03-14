import 'package:eccomerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:eccomerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:eccomerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:eccomerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:eccomerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:eccomerce_app/utils/constants/colors.dart';
import 'package:eccomerce_app/utils/constants/image_strings.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:eccomerce_app/utils/device/device_utility.dart';
import 'package:eccomerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return  Scaffold(
      body: Stack(
        children: [
          // horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: EccomerceImages.onBoardingImage1,
                title: EccomerceTexts.onBoardingTitle1,
                subTitle: EccomerceTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EccomerceImages.onBoardingImage2,
                title: EccomerceTexts.onBoardingTitle2,
                subTitle: EccomerceTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EccomerceImages.onBoardingImage3,
                title: EccomerceTexts.onBoardingTitle3,
                subTitle: EccomerceTexts.onBoardingSubTitle3,
              ),
            ],
          ),

        //   Skip Button
          const OnBoardingSkip(),

        //   Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        //   Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}