import 'package:eccomerce_app/common/styles/spacing_styles.dart';
import 'package:eccomerce_app/features/authentication/screens/login/widgtes/login_form.dart';
import 'package:eccomerce_app/features/authentication/screens/login/widgtes/login_header.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EccomerceSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
            //   Logo, Title & Subtitle
               const EccomerceLoginHeader(),
            //   Form
              const EccomerceLoginForm(),
            //   Divider
              EccomerceFormDivider(dividerText: EccomerceTexts.orSignUpWith.capitalize!,),
              const SizedBox(height: EccomerceSizes.spaceBtwSections,),
              //   Footer
              const EccomerceSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
