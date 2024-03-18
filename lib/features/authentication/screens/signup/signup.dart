import 'package:eccomerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:eccomerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:eccomerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EccomerceSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///   Title
              Text(
                EccomerceTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: EccomerceSizes.spaceBtwSections,
              ),

              ///   Form
              const EccomerceSignUpForm(),
              const SizedBox(
                height: EccomerceSizes.spaceBtwSections,
              ),
              //   Divider
              EccomerceFormDivider(
                  dividerText: EccomerceTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: EccomerceSizes.spaceBtwSections,
              ),

              const EccomerceSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
