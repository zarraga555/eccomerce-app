import 'package:eccomerce_app/utils/constants/image_strings.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(EccomerceSizes.defaultSpace),
          child: Column(
            children: [
            //   Images with 60% of screen width
              Image(image: const AssetImage(EccomerceImages.deliveredEmailIllustration), width: EccomerceHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),

              //   Title & Subtitle
              Text(EccomerceTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwItems,),
              Text(EccomerceTexts.changeYourPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),

              //   Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: const Text(EccomerceTexts.done),),
              ),
              const SizedBox(height: EccomerceSizes.spaceBtwItems,),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: (){}, child: const Text(EccomerceTexts.resendEmail),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}