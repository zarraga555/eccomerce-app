import 'package:eccomerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
          ],
        ),
      body: SingleChildScrollView(
      //   Padding to Give Default Equal Space on all in all Screens.
        child: Padding(
          padding: const EdgeInsets.all(EccomerceSizes.defaultSpace),
          child: Column(
            children: [
            //   Image
              const Image(
                image: AssetImage(EccomerceImages.deliveredEmailIllustration),
              ),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),

            //   Title & Subtitle
              Text(EccomerceTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwItems,),
              Text('support@example.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwItems,),
              Text(EccomerceTexts.confirmEmailSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),

            //   Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SuccessScreen(
                    image: EccomerceImages.staticSuccessIllustration,
                    title: EccomerceTexts.yourAccountCreatedTitle,
                    subTitle: EccomerceTexts.yourAccountCreatedSubTitle,
                  ),),
                  child: const Text(EccomerceTexts.tContinue),),),
              const SizedBox(height: EccomerceSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(EccomerceTexts.resendEmail),),)
            ],
          ),
        ),
      ),
    );
  }
}