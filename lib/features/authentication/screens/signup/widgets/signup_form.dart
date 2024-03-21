import 'package:eccomerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:eccomerce_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class EccomerceSignUpForm extends StatelessWidget {
  const EccomerceSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        /// First & Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: EccomerceTexts.firstName, prefixIcon: Icon(Iconsax.user),),
              ),
            ),
            const SizedBox(width:  EccomerceSizes.spaceBtwInoutFields,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: EccomerceTexts.firstName, prefixIcon: Icon(Iconsax.user),),
              ),
            ),
          ],
        ),
        const SizedBox(height: EccomerceSizes.spaceBtwInoutFields,),

        /// Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: EccomerceTexts.username, prefixIcon: Icon(Iconsax.user_edit),),
        ),
        const SizedBox(height: EccomerceSizes.spaceBtwInoutFields,),

        ///   Email
        const TextField(
          decoration: InputDecoration(labelText: EccomerceTexts.email, prefixIcon: Icon(Iconsax.direct),),
        ),
        const SizedBox(height: EccomerceSizes.spaceBtwInoutFields,),

        ///   Phone Number
        const TextField(
          decoration: InputDecoration(labelText: EccomerceTexts.phoneNo, prefixIcon: Icon(Iconsax.call),),
        ),
        const SizedBox(height: EccomerceSizes.spaceBtwInoutFields,),

        ///   Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: EccomerceTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ) ,
        ),
        const SizedBox(height: EccomerceSizes.spaceBtwInoutFields,),

        ///   Terms & Conditions Checkbox
        const EccomerceTermsAndConditionsCheckbox(),
        const SizedBox(height: EccomerceSizes.spaceBtwSections,),
        ///   Sign up Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(EccomerceTexts.createAccount),),),
      ],
    ),
    );
  }
}