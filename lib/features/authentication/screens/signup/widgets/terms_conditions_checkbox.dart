import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EccomerceTermsAndConditionsCheckbox extends StatelessWidget {
  const EccomerceTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EccomerceHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 42, child: Checkbox(value: true, onChanged: (value) {},),),
        const SizedBox(width: EccomerceSizes.spaceBtwItems,),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: '${EccomerceTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${EccomerceTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? EccomerceColors.white : EccomerceColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? EccomerceColors.white : EccomerceColors.primary,
            )),

            TextSpan(text: '${EccomerceTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: EccomerceTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? EccomerceColors.white : EccomerceColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? EccomerceColors.white : EccomerceColors.primary,
            )),
          ],),
        )
      ],
    );
  }
}