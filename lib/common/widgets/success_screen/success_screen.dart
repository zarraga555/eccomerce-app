import 'package:eccomerce_app/common/styles/spacing_styles.dart';
import 'package:eccomerce_app/features/authentication/screens/login/login.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:eccomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, });//required this.onPressed

  final String image, title, subTitle;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EccomerceSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
            //   Image
              Image(image: AssetImage(image), width: EccomerceHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),
              
            //   Title & Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwItems,),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),
              
            //   Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(EccomerceTexts.tContinue),),
              )
            ],
          ),
        ),
      ),
    );
  }

}