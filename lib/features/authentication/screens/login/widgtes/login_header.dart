import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EccomerceLoginHeader extends StatelessWidget {
  const EccomerceLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EccomerceHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? EccomerceImages.lightAppLogo: EccomerceImages.darkAppLogo),
        ),
        Text(EccomerceTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: EccomerceSizes.sm,),
        Text(EccomerceTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}