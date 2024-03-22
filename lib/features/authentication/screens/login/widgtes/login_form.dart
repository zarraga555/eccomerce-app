import 'package:eccomerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:eccomerce_app/features/authentication/screens/signup/signup.dart';
import 'package:eccomerce_app/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class EccomerceLoginForm extends StatelessWidget {
  const EccomerceLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: EccomerceSizes.spaceBtwSections),
      child: Column(
        children: [
          //   Email
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: EccomerceTexts.email),
          ),
          const SizedBox(height: EccomerceSizes.spaceBtwInoutFields,),

          //   Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: EccomerceTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),
          const SizedBox(height: EccomerceSizes.spaceBtwInoutFields / 2,),

          //   Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //   Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(EccomerceTexts.rememberMe),
                ],
              ),

              //   Forget Password
              TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(EccomerceTexts.forgotPassword)),
            ],
          ),
          const SizedBox(height: EccomerceSizes.spaceBtwSections,),

          //   SignIn button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(EccomerceTexts.sigIn),),),
          const SizedBox(height: EccomerceSizes.spaceBtwItems,),
          //   Create Account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(EccomerceTexts.createAccount),),),
        ],
      ),
    ),
    );
  }
}