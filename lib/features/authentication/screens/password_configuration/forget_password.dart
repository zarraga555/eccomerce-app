import 'package:eccomerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(EccomerceSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(EccomerceTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: EccomerceSizes.spaceBtwItems,),
            Text(EccomerceTexts.forgotPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: EccomerceSizes.spaceBtwItems * 2,),

          //   Text field
            TextFormField(
              decoration: const InputDecoration(labelText: EccomerceTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height:EccomerceSizes.spaceBtwSections),

          //   Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(EccomerceTexts.submit),),)
          ],
        ),
      ),
    );
  }
}