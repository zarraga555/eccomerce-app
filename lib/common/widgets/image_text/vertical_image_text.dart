import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class EccomerceVerticalImageText extends StatelessWidget {
  const EccomerceVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = EccomerceColors.white,
    this.backgroundColor = EccomerceColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final dark = EccomerceHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: EccomerceSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(EccomerceSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? EccomerceColors.black : EccomerceColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? EccomerceColors.light : EccomerceColors.dark,),
              ),
            ),
            ///   Text
            const SizedBox(height: EccomerceSizes.spaceBtwItems /2,),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
            ),
          ],
        ),
      ),
    );
  }
}